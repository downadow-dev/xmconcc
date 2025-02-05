#!/usr/bin/python3

###################################################################

includes = []
allocptr = 8700000
defines = {}

def reset_preprocess_vars():
    global includes
    global allocptr
    global defines
    
    includes = []
    allocptr = 8700000
    defines = {}

# обработать директивы в коде
def preprocess(include_path, code):
    code = code.replace('\t', '').replace('\\\n', '').split('\n')
    
    result = ''
    
    global includes
    global allocptr
    global defines
    
    for line in code:
        line = line.strip()
        if line.startswith('/define '):
            defines[line.split(' ')[1]] = line[(line.find(':') + 1):].replace('\\n', '\n')
        elif line.startswith('/alloc ') and not '[' in line.split(' ')[1]:
            allocptr -= 1
            defines[line.split(' ')[1]] = str(allocptr).zfill(7)
        elif line.startswith('/alloc '):
            allocptr -= int(line.split(' ')[1].split('[')[1].split(']')[0], base=0)
            defines[line.split(' ')[1].split('[')[0]] = str(allocptr).zfill(7)
            defines[line.split(' ')[1].split('[')[0] + '.length'] = line.split(' ')[1].split('[')[1].split(']')[0]
        elif line.startswith('/free '):
            allocptr += int(line.split(' ')[1], base=0)
        elif line.startswith('/include ') and not line.split('"')[1] in includes:
            f = open(include_path + '/' + line.split('"')[1], 'r')
            result += preprocess(include_path, f.read()) + '\n'
            f.close()
            includes += [line.split('"')[1]]
        elif line.startswith('/include '):
            continue
        
    for line in code:
        line = line.strip()
        if not line.startswith('#') and not line.startswith('/') and line != '':
            for i in range(4):
                for name in defines:
                    line = line.replace('{' + name + '}!', defines[name] + ' .')
                    line = line.replace('{' + name + '}', defines[name])
            result += line + '\n'
    
    return result[:-1]

# получить древо кода
def maketree(code):
    tree = []
    continue_label = 0
    # формат элемента древа:
    #   [0] строка, определяющая тип операции
    #       ('asm', 'string' и т. д.)
    #   [1] является массивом аргументов операции
    #       (например, у 'label' это одна строка)
    for line in code.split('\n'):
        if line == '':
            continue
        elif line.startswith('"'):
            tree += [['string', [line.split('"')[2].strip(), line.split('"')[1]]]]
        elif line.startswith('$'):
            tree += [['asm', [line[1:].strip()]]]
        else:
            line = line.replace("'\\0'", str(0)).replace("';'", str(ord(';'))).replace(' ;', ';').replace(';', ' ;')
            for word in line.split(' '):
                word = word.replace('(', '').replace(')', '')
                
                if word == '':
                    continue
                elif word[0].isdigit():
                    tree += [['push_number', [int(word, base=0)]]]
                elif word.startswith('#'):
                    break
                elif word[0] == "'":
                    tree += [['push_number', [ord(word[1])]]]
                elif word[0] == "&":
                    tree += [['push_string_addr', [word[1:]]]]
                elif word[0] == "~":
                    tree += [['push_label', [word[1:]]]]
                elif word.startswith('<') and word.endswith('>'):
                    tree += [['push_extern_label', [word[1:-1]]]]
                elif word[0] == "@":
                    tree += [['push_label', ['__C' + str(continue_label)]]]
                    tree += [['push_label', [word[1:]]]]
                    tree += [['call', ['goto']]]
                    tree += [['label', ['__C' + str(continue_label)]]]
                    continue_label += 1
                elif word == ';':
                    tree += [['reset_stack_pointer', []]]
                elif word.endswith(':'):
                    tree += [['label', [word.replace(':', '')]]]
                else:
                    tree += [['call', [word]]]
    return tree

# перевести в ассемблерный код Makexm2c
def compile_for_xmtwolime(prog_name, tree, outfile):
    current_label = 0              # номер следующей вспомогательной метки
    
    def asm(code):
        print(code, file=outfile)
    
    # получить номер п. регистра
    def getreg(base):
        return '%R_FA_' + str(base) + '%'
    
    # получить регистр хранения указателя стека
    def getrstackptr():
        return getreg(9)
    
    # получить начало стека
    def getstackstart():
        return 6900100
    
    # получить регистр для хранения адреса возврата
    def getrret():
        return getreg(8)
    
    # получить регистр для хранения номера текущего потока
    def getrthread():
        return getreg(7)
    
    ###########################
    
    asm(prog_name + ':')
    asm('mov2 ' + getrstackptr() + ', ' + str(getstackstart()).zfill(7))
    asm('mov %R_FA_24%, %OUT_ST%')  # сброс указателя вывода
    asm('mov ' + getrthread() + ', 0')
    
    asm('mov2 ' + getreg(0) + ', 6900000')
    asm('mov2 ' + getreg(1) + ', ' + str(getstackstart()).zfill(7))
    asm('mov2 ' + getreg(2) + ', <' + prog_name + '_L' + str(current_label) + '>')
    asm('mov ' + getreg(3) + ', 1')
    asm('neg ' + getreg(3))
    asm(prog_name + '_L' + str(current_label) + ':')
    current_label += 1
    asm('isv ' + getreg(3) + ', ' + getreg(0))
    asm('inc ' + getreg(0))
    asm('if ' + getreg(0) + ' < ' + getreg(1) + ', ' + getreg(2))
    
    ###########################
    
    for block in tree:
        if block[0] == 'label':
            asm(prog_name + '_l' + block[1][0] + ':')
        elif block[0] == 'string':
            asm(prog_name + '_S' + block[1][0] + ':')
            asm('.goto +' + str(len(block[1][1]) + 1))
            if len(block[1][1]) > 0:
                asm('.ascii <' + prog_name + '_S' + block[1][0] + '> "' + block[1][1] + '"')
        elif block[0] == 'asm':
            asm(block[1][0])
        elif block[0] == 'push_number':
            if block[1][0] >= -1 and block[1][0] <= 127:
                asm('mov ' + getreg(0) + ', ' + str(block[1][0]))
            else:
                asm('mov2 ' + getreg(0) + ', ' + str(block[1][0]).replace('-', '').zfill(7))
                if block[1][0] < 0:
                    asm('tnp ' + getreg(0))
            asm('isv ' + getreg(0) + ', ' + getrstackptr())
            asm('inc ' + getrstackptr())
        elif block[0] == 'push_label':
            asm('mov2 ' + getreg(0) + ', <' + prog_name + '_l' + block[1][0] + '>')
            asm('isv ' + getreg(0) + ', ' + getrstackptr())
            asm('inc ' + getrstackptr())
        elif block[0] == 'push_extern_label':
            asm('mov2 ' + getreg(0) + ', <' + block[1][0] + '>')
            asm('isv ' + getreg(0) + ', ' + getrstackptr())
            asm('inc ' + getrstackptr())
        elif block[0] == 'push_string_addr':
            asm('mov2 ' + getreg(0) + ', <' + prog_name + '_S' + block[1][0] + '>')
            asm('isv ' + getreg(0) + ', ' + getrstackptr())
            asm('inc ' + getrstackptr())
        elif block[0] == 'reset_stack_pointer':
            asm('mov2 ' + getrstackptr() + ', ' + str(getstackstart()).zfill(7))
        elif block[0] == 'call':
            asm('mov2 ' + getreg(0) + ', <__0___next_thread>')
            if block[1][0] != 'goto' and block[1][0] != 'xm2_code':
                asm('mov2 ' + getrret() + ', <' + prog_name + '_L' + str(current_label) + '>')
            else:
                asm('dec ' + getrstackptr())
                asm('ild ' + getrstackptr() + ', ' + getrret())
            asm('jmp ' + getreg(0))
            if block[1][0] != 'goto' and block[1][0] != 'xm2_code':
                asm(prog_name + '_L' + str(current_label) + ':')
                current_label += 1
                asm('mov2 ' + getreg(0) + ', <__0_' + block[1][0] + '>')
                asm('mov2 ' + getrret() + ', <' + prog_name + '_L' + str(current_label) + '>')
                asm('jmp ' + getreg(0))
                asm(prog_name + '_L' + str(current_label) + ':')
                current_label += 1

###################################################################

if __name__ == '__main__':
    import sys
    
    if len(sys.argv) > 1 and sys.argv[1] == '--help':
        print('xmconcc - The XMConC Compiler.')
        print('Usage:  ./xmconcc.py [--help] INCLUDE_PATH NAME PROG')
        print('')
        print('  --help           print this message and exit')
        print('  INCLUDE_PATH     directory of header-files')
        print('  NAME             name of XMConC program')
        print('  PROG             path to XmConC source file')
        sys.exit(1)
    
    try:
        fcontent = ''
        progname = sys.argv[2]
        if len(ascii(progname).split("'")[1]) != 3:
            print('error: len(ascii(progname).split("\'")[1]) != 3', file=sys.stderr)
            sys.exit(3)
        f = open(sys.argv[3], 'r')
        fcontent = f.read()
        f.close()
    except Exception:
        sys.exit(2)
    
    compile_for_xmtwolime(progname, maketree(preprocess(sys.argv[1], fcontent)), sys.stdout)
