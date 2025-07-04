#!/bin/bash
set -euo pipefail
IFS=$'\n\t'


relay_1() {
	echo "relay_1 $1"
	pinctrl set 4 op pn $1
}
relay_2() {
	echo "relay_2 $1"
	pinctrl set 17 op pn $1
}
relay_3() {
	echo "relay_3 $1"
	pinctrl set 27 op pn $1
}
relay_4() {
	echo "relay_4 $1"
	pinctrl set 22 op pn $1
}
relay_5() {
	echo "relay_5 $1"
	pinctrl set 6 op pn $1
}
relay_6() {
	echo "relay_6 $1"
	pinctrl set 26 op pn $1
}
relay_7() {
	echo "relay_7 $1"
	pinctrl set 21 op pn $1
}
relay_8() {
	echo "relay_8 $1"
	pinctrl set 5 op pn $1
}

init() {
    relay_1 dl
    relay_2 dl
    relay_3 dl
    relay_4 dl
    relay_5 dl
    relay_6 dl
    relay_7 dl
    relay_8 dl
}

init
