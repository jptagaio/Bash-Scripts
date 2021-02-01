#!/usr/bin/bash

#This script backups the whole system using rsync
sudo rsync -aAXv -e "ssh -p 42033 -i /home/jptagaio/.ssh/id_ed25519" --progress --delete --exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=/media/* --exclude="swapfile" --exclude="lost+found" --exclude=".cache" --exclude="Transferências" --exclude="VirtualBox VMs" --exclude="Dropbox" --exclude="MEOCloud" --exclude=".ecryptfs" / jptagaio@192.168.1.68:/share/Backup_Arch/

