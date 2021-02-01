#!/usr/bin/bash

#Show a message with the purpuse of this programm
echo "Arch Linux Maintainer Script"

#Ask the user what we wants to do
quit="run"

while [ true ]
do
    #Ask the user what we wants to do
    echo -e "0 - Clean the cash files from pacman;\n1 - Yay cleaning unneeded dependencies;\n2 - List orphan packages;\n3 - Remove orphan packages;\n4 - Show space occupied by cache directory;\n5 - Remove all files in .cache directory;\n6 - Show space occupied by config directory;\n7 - Delete all files in .config folder;\n8 - Check the mirrors in terms of connection speed;\n9 - Merge .pacnews with .pacsaves;\nq/Q/quit/Quit - To exit the program;\n"
    read option
 
    case $option in
        0)  echo "Cleaning cash files from pacman"
            sudo pacman -Sc
        ;;
        1)  echo "Cleaning unneeded dependencies"
	    yay -Yc 
        ;;
        2)  echo "List orphan packages"
            pacman -Qtdq
        ;;
        3)  echo "Removing orphan packages"
            #Before removing list orphan packages
            pacman -Qtdq
            sudo pacman -Rns $(pacman -Qdtq)
        ;;
        4)  echo "Spaced used by cache folder"
            du -sh ~/.cache/
        ;;
        5)  echo "Removing cache files"
            rm -rf ~/.cache/*
        ;;
        6)  echo "Spaced used by config folder"
            du -sh ~/.config/
        ;;    
        7)  echo "Removing the files in config folder"
            rm -rf ~/.config/*
        ;;
        8)  echo "Checking the mirros with better connection speed"
            echo "Which country are you?"
            read country
            sudo reflector -c "$country" -a 6 --sort rate --save /etc/pacman.d/mirrorlist 
        ;;
        9)  echo "Merging pacnew with pacsaves"
            sudo pacdiff
        ;;
        "quit" | "q" | "Q" | "Quit")
            break
        ;;
        *)
            echo "Invalid option"
        ;;
    esac
done
