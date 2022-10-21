#!/bin/sh

backend_s="Xorg"

if [ ! -z $(pgrep $backend_s) ]; then
	killall $backend_s
	sleep .2
fi

$backend_s :0 -quiet &
export DISPLAY=:0
$(find . -name *.elf) $1
