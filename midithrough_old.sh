#!/bin/bash
aseqdump -p "Midi Through" | \
	while IFS=" ," read src ev1 ev2 ch label1 data1 label2 data2 rest; do
    		case "$ev1 $ev2 $data1" in
		# white keys
	    "Note on 60" ) xdotool keydown q ;;   # C
		"Note on 62" ) xdotool keydown w ;;   # D
		"Note on 64" ) xdotool keydown e ;;   # E
		"Note on 65" ) xdotool keydown r ;;   # F
		"Note on 67" ) xdotool keydown t ;;   # G
		"Note on 69" ) xdotool keydown y ;;   # A
		"Note on 71" ) xdotool keydown u ;;   # B
		"Note on 72" ) xdotool keydown a ;;   # C
		"Note on 74" ) xdotool keydown s ;;   # D
		"Note on 76" ) xdotool keydown d ;;   # E
		"Note on 77" ) xdotool keydown f ;;   # F
		"Note on 79" ) xdotool keydown g ;;   # G
		"Note on 81" ) xdotool keydown h ;;   # A
		"Note on 83" ) xdotool keydown j ;;   # B
		"Note on 84" ) xdotool keydown z ;;   # C 
		"Note on 86" ) xdotool keydown x ;;   # D
		"Note on 88" ) xdotool keydown c ;;   # E
		"Note on 89" ) xdotool keydown v ;;   # F
		"Note on 91" ) xdotool keydown b ;;   # G
		"Note on 93" ) xdotool keydown n ;;   # A
		"Note on 95" ) xdotool keydown m ;;   # B
		"Note on 96" ) xdotool keydown 0x005c ;; # C+1
     	"Note off 60" ) xdotool keyup q ;; 
		"Note off 62" ) xdotool keyup w ;;   # D
		"Note off 64" ) xdotool keyup e ;;   # E
		"Note off 65" ) xdotool keyup r ;;   # F
		"Note off 67" ) xdotool keyup t ;;   # G
		"Note off 69" ) xdotool keyup y ;;   # A
		"Note off 71" ) xdotool keyup u ;;   # B
		"Note off 72" ) xdotool keyup a ;;   # C
		"Note off 74" ) xdotool keyup s ;;   # D
		"Note off 76" ) xdotool keyup d ;;   # E
		"Note off 77" ) xdotool keyup f ;;   # F
		"Note off 79" ) xdotool keyup g ;;   # G
		"Note off 81" ) xdotool keyup h ;;   # A
		"Note off 83" ) xdotool keyup j ;;   # B
		"Note off 84" ) xdotool keyup z ;;   # C 
		"Note off 86" ) xdotool keyup x ;;   # D
		"Note off 88" ) xdotool keyup c ;;   # E
		"Note off 89" ) xdotool keyup v ;;   # F
		"Note off 91" ) xdotool keyup b ;;   # G
		"Note off 93" ) xdotool keyup n ;;   # A
		"Note off 95" ) xdotool keyup m ;;   # B
		"Note off 96" ) xdotool keyup 0x005c ;; # C+1
		# black keys
		"Note on 61" ) xdotool keydown 0xffbd ;;  # equals sign
		"Note on 63" ) xdotool keydown 0x005d ;;  # bracket right
		"Note on 66" ) xdotool keydown 0x002c ;;  # comma
		"Note on 68" ) xdotool keydown 0x002e ;;  # period
		"Note on 70" ) xdotool keydown 0x002f ;;  # slash
		"Note on 73" ) xdotool keydown 6 ;;
		"Note on 75" ) xdotool keydown 7 ;;
		"Note on 78" ) xdotool keydown 8 ;;
		"Note on 80" ) xdotool keydown 9 ;;
		"Note on 82" ) xdotool keydown 0 ;;
		"Note on 85" ) xdotool keydown 1 ;;
		"Note on 87" ) xdotool keydown 2 ;;
		"Note on 90" ) xdotool keydown 3 ;;
		"Note on 92" ) xdotool keydown 4 ;;
		"Note on 94" ) xdotool keydown 5 ;;
		"Note off 61" ) xdotool keyup 0xffbd ;;
		"Note off 63" ) xdotool keyup 0x005d ;;
		"Note off 66" ) xdotool keyup 0x002c ;;
		"Note off 68" ) xdotool keyup 0x002e ;;
		"Note off 70" ) xdotool keyup 0x002f ;;
		"Note off 73" ) xdotool keyup 6 ;;
		"Note off 75" ) xdotool keyup 7 ;;
		"Note off 78" ) xdotool keyup 8 ;;
		"Note off 80" ) xdotool keyup 9 ;;
		"Note off 82" ) xdotool keyup 0 ;;
		"Note off 85" ) xdotool keyup 1 ;;
		"Note off 87" ) xdotool keyup 2 ;;
		"Note off 90" ) xdotool keyup 3 ;;
		"Note off 92" ) xdotool keyup 4 ;;
		"Note off 94" ) xdotool keyup 5 ;;
	    esac
	done
