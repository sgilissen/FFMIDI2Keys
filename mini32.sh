#!/bin/bash
aseqdump -p "Keystation Mini 32" | \
	while IFS=" ," read src ev1 ev2 ch label1 data1 label2 data2 rest; do
    		case "$ev1 $ev2 $data1" in
			# white keys
	        "Note on 48" ) xdotool type z ;;
	        "Note on 50" ) xdotool type x ;;
		"Note on 52" ) xdotool type c ;;
		"Note on 53" ) xdotool type v ;;
		"Note on 55" ) xdotool type b ;;
		"Note on 57" ) xdotool type n ;;
		"Note on 59" ) xdotool type m ;;
		"Note on 60" ) xdotool type , ;;
		"Note on 62" ) xdotool type . ;;
		"Note on 64" ) xdotool type / ;;
		"Note on 65" ) xdotool type q ;;
		"Note on 67" ) xdotool type w ;;
		"Note on 69" ) xdotool type e ;;
		"Note on 71" ) xdotool type r ;;
		"Note on 72" ) xdotool type t ;;
		"Note on 74" ) xdotool type y ;;
		"Note on 76" ) xdotool type u ;;
		"Note on 77" ) xdotool type i ;;
		"Note on 79" ) xdotool type o ;;
		# black keys
		"Note on 49" ) xdotool type s ;;
		"Note on 51" ) xdotool type d ;;
		"Note on 54" ) xdotool type g ;;
		"Note on 56" ) xdotool type h ;;
		"Note on 58" ) xdotool type j ;;
		"Note on 61" ) xdotool type l ;;
		"Note on 63" ) xdotool type 1 ;;
		"Note on 66" ) xdotool type 2 ;;
		"Note on 68" ) xdotool type 3 ;;
		"Note on 70" ) xdotool type 4 ;;
		"Note on 73" ) xdotool type 6 ;;
		"Note on 75" ) xdotool type 7 ;;
		"Note on 78" ) xdotool type 9 ;;
	    esac
	done
