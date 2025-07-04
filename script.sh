#!/bin/bash
set -euo pipefail
IFS=$'\n\t'


in_1() {
	echo "in_1 $1"
	pinctrl set 4 op pn $1
}
in_2() {
	echo "in_2 $1"
	pinctrl set 17 op pn $1
}
in_3() {
	echo "in_3 $1"
	pinctrl set 27 op pn $1
}
in_4() {
	echo "in_4 $1"
	pinctrl set 22 op pn $1
}
in_5() {
	echo "in_5 $1"
	pinctrl set 5 op pn $1
}
in_6() {
	echo "in_6 $1"
	pinctrl set 6 op pn $1
}
in_7() {
	echo "in_7 $1"
	pinctrl set 13 op pn $1
}
in_8() {
	echo "in_8 $1"
	pinctrl set 26 op pn $1
}

in_1 dl
in_2 dl
in_3 dl
in_4 dl
in_5 dl
in_6 dl
in_7 dl
in_8 dl

while true; do
	in_1 dh; sleep 1; in_1 dl; sleep 1
	in_2 dh; sleep 1; in_2 dl; sleep 1
	in_3 dh; sleep 1; in_3 dl; sleep 1
	in_4 dh; sleep 1; in_4 dl; sleep 1
	in_5 dh; sleep 1; in_5 dl; sleep 1
	in_6 dh; sleep 1; in_6 dl; sleep 1
	in_7 dh; sleep 1; in_7 dl; sleep 1
	in_8 dh; sleep 1; in_8 dl; sleep 1
done
