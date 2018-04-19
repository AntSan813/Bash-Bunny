#!/bin/bash
#
# REQUIRETOOL v1 by @Hak5Darren
# Checks for specified directory in /tools, exits with LED FAIL if not found
# Usage: REQUIRETOOL directory
#
# Examples:
# REQUIRETOOL impacket

function REQUIRETOOL() {
	[[ -z "$1" ]] && exit 1 # parameter must be set

	type $1 &> /dev/null || {
		[[ -d /tools/$1 ]] || {
			LED FAIL
			exit 1
		}
	}
}
export -f REQUIRETOOL
