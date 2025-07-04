#!/bin/bash
set -euo pipefail
IFS=$'\n\t'


relay_1() {
	echo "relay_1 $1"
	pinctrl set 16 op pn $1
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
	pinctrl set 20 op pn $1
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
	pinctrl set 25 op pn $1
}
mofet_1() {
	echo "mofet_1 $1"
	pinctrl set 13 op pn $1
}
mofet_2() {
	echo "mofet_2 $1"
	pinctrl set 19 op pn $1
}
mofet_3() {
	echo "mofet_3 $1"
	pinctrl set 18 op pn $1
}
mofet_4() {
	echo "mofet_4 $1"
	pinctrl set 12 op pn $1
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
    mofet_1 dl
    mofet_2 dl
    mofet_3 dl
    mofet_4 dl
}

init
