#!/bin/sh
# Options:
#	-u <username>
#	-p <password>
#	-f fullscreen mode. Press Ctrl+Alt+Enter to exit fullscreen
# $1: receive a parameter(IP address)

rdesktop -u administrator -f $1 &
