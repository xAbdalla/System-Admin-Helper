#/bin/bash
#
# First menu in the program with all the main options Add/Modify/Delete/List


eval `resize`
command=$(whiptail --title "Main Menu" --cancel-button "Exit" --ok-button "Select" \
--menu "Choose an option" \
$LINES $COLUMNS $(( $LINES - 8 )) \
"Add User" "Add a user to the system." \
"Modify User" "Modify an existing user." \
"Delete User" "Delete an existing user." \
"List Users" "List all users on the system." \
"Add Group" "Add a user group to the system." \
"Modify Group" "Modify a group and its list of members." \
"Delete Group" "Delete an existing group." \
"List Groups" "List all groups on the system." \
"Disable User" "Lock the user account." \
"Enable User" "Unlock the user account." \
"Change Password" "Change Password of a user." \
"About" "Some information about the program and the author." \
3>&1 1>&2 2>&3)

if [ $? != 0 ]; then ./scripts/exit-menu.sh; exit; fi

case $command in
    "Add User") ./scripts/adduser-menu.sh; exit ;;
    "Modify User") ./scripts/moduser-menu.sh; exit ;;
    "Delete User") ./scripts/deluser-menu.sh; exit ;;
    "List Users") ./scripts/listuser-menu.sh; exit ;;
    "Add Group") ./scripts/addgrp-menu.sh; exit ;;
    "Modify Group") ./scripts/modgrp-menu.sh; exit ;;
    "Delete Group") ./scripts/delgrp-menu.sh; exit ;;
    "List Groups") ./scripts/listgrp-menu.sh; exit ;;
    "Disable User") ./scripts/disuser-menu.sh; exit ;;
    "Enable User") ./scripts/enuser-menu.sh; exit ;;
    "Change Password") ./scripts/chpass-menu.sh; exit ;;
    "About") ./scripts/about.sh; exit ;;
    *) whiptail --title "Strange Error!" --msgbox "Error! You are not supposed to see this meesage!" 8 78 ;;
esac
