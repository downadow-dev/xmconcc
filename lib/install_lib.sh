#!/bin/bash

if [ -z "$1" ]; then
	echo 'usage:  ./install_lib.sh /path/to/xmtwolime/software'
else
	cat main.s main/*.s thread1/*.s > "$1"/LIB.s
fi
