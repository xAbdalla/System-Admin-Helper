#!/bin/bash

if (whiptail --title "Exit" --yesno "Are you sure you want to exit?" 8 78); then
    exit
else
    ./scripts/main-menu.sh; exit
fi
