#!/bin/bash

function banner(){
	echo "  _______ _                     _____ __  __  _____ "
	echo " |__   __(_)                   / ____|  \\/  |/ ____|"
	echo "    | |   _ _ __  _   _ ______| |    | \\  / | (___  "
	echo "    | |  | | '_ \\| | | |______| |    | |\\/| |\\___ \\ "
	echo "    | |  | | | | | |_| |      | |____| |  | |____) |"
	echo "    |_|  |_|_| |_|\\__, |       \\_____|_|  |_|_____/ "
	echo "                   __/ |                            "
	echo "                  |___/                             "
	echo ""
}

function menu(){
	echo "[1] SHOW POSTS"
	echo "[2] CREATE A POST"
	echo "[3] DELETE A POST"
	echo "[4] SAVE AS DRAFT"
	echo "[5] SHOW DRAFTS"
	echo "[6] DELETE DRAFT"
	echo "[7] UPDATE WEB PAGE"
	echo ""
	echo "[0] EXIT"
}

function show_posts(){
	ls -al .posts/
}


function create_post(){
	touch .posts/new_post
}

function menu_handler(){
	echo ""
	echo -n "ENTER YOUR CHOICE : "
	read CHOICE

	case $CHOICE in
		1)
			show_posts
			menu
			menu_handler
			;;

		2)
			create_post
			menu
			menu_handler
			;;
		
		3) 	echo "DELETE A POST"
			;;

		4) 	echo "SAVE AS DRAFT"
			;;

		5) 	echo "SHOW DRAFTS"
			;;

		6) 	echo "DELETE DRAFT"
			;;

		7) 	echo "UPDATE WEB PAGE"
			;;

		0) 	echo "EXITING ..."
			exit
			;;

		*)
			menu_handler
			;;
	esac
}

#######################################################################
#                               MAIN                                  #
#######################################################################

clear
banner
menu
menu_handler
