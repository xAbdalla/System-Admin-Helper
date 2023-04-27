#!/bin/bash

eval `resize`   # Used to make the menu size full screen.

about="
*** FOR EDUCATIONAL PURPOSES ***
 
This program designed to help you to add/modifiy/delete/view users/groups with multipule options.
The script mainly use (whiptail) tool to interact with user.
Must run as a root or sudo with suitable permissions.

Created By: Abdalla Hamdy
Last Update: 2023.04.19
Github: https://github.com/xAbdalla
LinkedIn: https://www.linkedin.com/in/abdallahamdy

*** Feel free to fork and edit it if you like ***
"

whiptail --title "About This Program" --msgbox "$about" $LINES $COLUMNS --scrolltext

./scripts/main-menu.sh; exit
