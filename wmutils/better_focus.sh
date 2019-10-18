#!/bin/bash

focus.sh next

FW=$(pfw)

if [[ $(wname $FW)="bar" ]]; then
	focus.sh next
fi
