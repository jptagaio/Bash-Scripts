#!/usr/bin/bash

#This script backups the whole system using rsync
sudo rsync -aAXHv -M--fake-super --numeric-ids -e "ssh -p 42033 -i /home/jptagaio/.ssh/id_ed25519" --progress --delete --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","swapfile","lost+found",".cache","Transferências","VirtualBox VMs","Dropbox","MEOCloud",".ecryptfs" / systemAdmin@192.168.1.68:/share/Backup_Arch/

