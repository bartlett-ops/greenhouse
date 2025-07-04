#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

source init.sh

while true; do
	relay_1 dh; sleep 0.5; relay_1 dl; sleep 0.5 
	relay_2 dh; sleep 0.5; relay_2 dl; sleep 0.5 
	relay_3 dh; sleep 0.5; relay_3 dl; sleep 0.5 
	relay_4 dh; sleep 0.5; relay_4 dl; sleep 0.5 
	relay_5 dh; sleep 0.5; relay_5 dl; sleep 0.5 
	relay_6 dh; sleep 0.5; relay_6 dl; sleep 0.5 
	relay_7 dh; sleep 0.5; relay_7 dl; sleep 0.5 
	relay_8 dh; sleep 0.5; relay_8 dl; sleep 0.5 
done
