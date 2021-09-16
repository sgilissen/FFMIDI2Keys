#!/bin/bash
aseqdump -p "Midi Through" | \
	while IFS=" ," read src ev1 ev2 ch label1 data1 label2 data2 rest; do
    		case "$ev1 $ev2 $data1" in
		# white keys
	    "Note on 48" ) xdotool keydown q ;;   # C
		"Note on 50" ) xdotool keydown w ;;   # D
		"Note on 52" ) xdotool keydown e ;;   # E
		"Note on 53" ) xdotool keydown r ;;   # F
		"Note on 55" ) xdotool keydown t ;;   # G
		"Note on 57" ) xdotool keydown y ;;   # A
		"Note on 59" ) xdotool keydown u ;;   # B
		"Note on 60" ) xdotool keydown a ;;   # C
		"Note on 62" ) xdotool keydown s ;;   # D
		"Note on 64" ) xdotool keydown d ;;   # E
		"Note on 65" ) xdotool keydown f ;;   # F
		"Note on 67" ) xdotool keydown g ;;   # G
		"Note on 69" ) xdotool keydown h ;;   # A
		"Note on 71" ) xdotool keydown j ;;   # B
		"Note on 72" ) xdotool keydown z ;;   # C 
		"Note on 74" ) xdotool keydown x ;;   # D
		"Note on 76" ) xdotool keydown c ;;   # E
		"Note on 77" ) xdotool keydown v ;;   # F
		"Note on 79" ) xdotool keydown b ;;   # G
		"Note on 81" ) xdotool keydown n ;;   # A
		"Note on 83" ) xdotool keydown m ;;   # B
		"Note on 84" ) xdotool keydown 0x005c ;; # C+1
	    "Note off 48" ) xdotool keyup q ;;   # C
		"Note off 50" ) xdotool keyup w ;;   # D
		"Note off 52" ) xdotool keyup e ;;   # E
		"Note off 53" ) xdotool keyup r ;;   # F
		"Note off 55" ) xdotool keyup t ;;   # G
		"Note off 57" ) xdotool keyup y ;;   # A
		"Note off 59" ) xdotool keyup u ;;   # B
		"Note off 60" ) xdotool keyup a ;;   # C
		"Note off 62" ) xdotool keyup s ;;   # D
		"Note off 64" ) xdotool keyup d ;;   # E
		"Note off 65" ) xdotool keyup f ;;   # F
		"Note off 67" ) xdotool keyup g ;;   # G
		"Note off 69" ) xdotool keyup h ;;   # A
		"Note off 71" ) xdotool keyup j ;;   # B
		"Note off 72" ) xdotool keyup z ;;   # C 
		"Note off 74" ) xdotool keyup x ;;   # D
		"Note off 76" ) xdotool keyup c ;;   # E
		"Note off 77" ) xdotool keyup v ;;   # F
		"Note off 79" ) xdotool keyup b ;;   # G
		"Note off 81" ) xdotool keyup n ;;   # A
		"Note off 83" ) xdotool keyup m ;;   # B
		"Note off 84" ) xdotool keyup 0x005c ;; # C+1
		# black keys
		"Note on 49" ) xdotool keydown 0xffbd ;;  # C#   equals sign
		"Note on 51" ) xdotool keydown 0x005d ;;  # Eb   bracket right
		"Note on 54" ) xdotool keydown 0x002c ;;  # F#   comma
		"Note on 56" ) xdotool keydown 0x002e ;;  # G#   period
		"Note on 58" ) xdotool keydown 0x002f ;;  # Bb   slash
		"Note on 61" ) xdotool keydown 6 ;;       # C#
		"Note on 63" ) xdotool keydown 7 ;;       # Eb
		"Note on 66" ) xdotool keydown 8 ;;       # F#
		"Note on 68" ) xdotool keydown 9 ;;       # G#
		"Note on 70" ) xdotool keydown 0 ;;       # Bb
		"Note on 73" ) xdotool keydown 1 ;;       # C#
		"Note on 75" ) xdotool keydown 2 ;;       # Eb
		"Note on 78" ) xdotool keydown 3 ;;       # F#
		"Note on 80" ) xdotool keydown 4 ;;       # G#
		"Note on 82" ) xdotool keydown 5 ;;       # Bb
		"Note off 49" ) xdotool keyup 0xffbd ;;  # C#   equals sign
		"Note off 51" ) xdotool keyup 0x005d ;;  # Eb   bracket right
		"Note off 54" ) xdotool keyup 0x002c ;;  # F#   comma
		"Note off 56" ) xdotool keyup 0x002e ;;  # G#   period
		"Note off 58" ) xdotool keyup 0x002f ;;  # Bb   slash
		"Note off 61" ) xdotool keyup 6 ;;       # C#
		"Note off 63" ) xdotool keyup 7 ;;       # Eb
		"Note off 66" ) xdotool keyup 8 ;;       # F#
		"Note off 68" ) xdotool keyup 9 ;;       # G#
		"Note off 70" ) xdotool keyup 0 ;;       # Bb
		"Note off 73" ) xdotool keyup 1 ;;       # C#
		"Note off 75" ) xdotool keyup 2 ;;       # Eb
		"Note off 78" ) xdotool keyup 3 ;;       # F#
		"Note off 80" ) xdotool keyup 4 ;;       # G#
		"Note off 82" ) xdotool keyup 5 ;;       # Bb
	    esac
	done
