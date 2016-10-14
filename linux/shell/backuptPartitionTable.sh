#!/bin/bash
# Die Partitionstabellen sichern entsprechend Ihres Typs: MBR/GPT
# Benötigte PGM: parted, sfdisk,sgdisk,sed
# Das Sicherungsverzeichnis kann mit angegeben werden (/Verzeichnis), Standard: ${HOME}
# Alle Texthinweise werden über stderr ausgegeben.

backupdir=${HOME}/                            # Ausgabeverzeichnis-Standard: ${HOME}
                                              # Name der Sicherungsdatei: 
timestamp=$(date +%Y%m%d-%H:%M)               # 1. Timestamp YYYYMMDD-HH:MM 
                                              # 2. der Devisename 
backupname="Backup"                           # 3. dieser Name (wird noch ergänzt, sofern lshw installiert)
                                              # Extension ist MPT (bei msdos Master-Boot-Record) bzw. GPT (bei gpt GUID-Partiton-Table)
export LC_ALL=C                               # wg. sed


     bold=$(echo -e "\e[1m")                  # ein bisschen Farbenspiel für die Konsole
      red=$(echo -e "\e[1;31m")
    green=$(echo -e "\e[1;32m")
     blue=$(echo -e "\e[1;34m")
   violet=$(echo -e "\e[1;35m")
     cyan=$(echo -e "\e[1;36m")
 standard=$(echo -e "\e[0;39m")
    stars='*****************************************************'

                                             # wenn lshw installiert ist, dann Datenträger-Bezeichnung ermitteln für Sicherungsdatie-Namen
disks=( $(which lshw >/dev/null && sudo lshw -businfo 2>/dev/null|sed -ne 's#^.*\@.*\(\/dev\/[shm][a-zA-Z]\+\) *\+disk *\+\(.*B\) \(.*\)$#\1:\3\-\2#p'|tr -s ' ' '_') )
                                             # sfdisk aus dem Paket fdisk muss installiert sein
which sfdisk 2>&1>/dev/null || { echo -e "\t${red}====> \t sfdisk muss installiert sein \t <====${standard}"; exit 1 ;}
                                             # sgdisk aus dem Paket gdisk muss installiert sein
which sgdisk 2>&1>/dev/null || { echo -e "\t${red}====> \t sgdisk muss installiert sein \t <====${standard}"; exit 1 ;}
                                             # parted muss installiert sein
which parted 2>&1>/dev/null || { echo -e "\t${red}====> \t parted muss installiert sein \t <====${standard}"; exit 1 ;}


if [[ `whoami` != root ]]                    # Ausführung mit Rootrechten
 then
    echo -e "\n\t\tDas Skript \"$(basename $0)\" muss mit ${bold}${red}Rootrechten${standard} gestarted werden\n" 1>&2
    exit 1
fi

 [ x$1 != 'x' -a -d $(dirname $a'/dummy') ] && backupdir=$(dirname $1'/dummy')/
                                             # $1 Ausgabeverzeichnis vorhanden/existent: j/n

echo -e "\n\t\t${stars}\n\t\t* Sichern der verschiedenen Tabellentypen (MTP/GPT) *\n\t\t${stars}\n\t\t Backup-Verzeichnis: ${blue}${backupdir}${standard}\n\t\t" 1>&2

  while read -r device
  do
    pt=$(sudo parted -s /dev/${device} print|sed -ne 's@^.*Table: \(.*\)$@\1@p')
    backup_file="${timestamp}_${device}-${backupname}" 
     for disk in ${disks[*]}                    # Datenträger-Bezeihnung auswerten
	do [ $(cut -d':' -f1 <<<$disk) == "/dev/${device}" ] && { backup_file="${timestamp}_${device}-${backupname}:$(cut -d':' -f2 <<< $disk)"; break ;}
     done
  
    case $pt in                              # Liste der bekannten Tabellentypen
      msdos) # MBR-Partitionstabelle (MPT)
             echo -e "\t${standard}Typ:\t${green}$pt${standard}\t   Device: ${cyan}/dev/${device}${standard}\tDatei: ${blue}${backup_file}.MPT${violet}" 1>&2
             $(sudo sfdisk -d /dev/${device} >${backupdir}${backup_file}.MPT)
             echo ${standard} 1>&2
              ;;
      gpt)   # GUID-Partitionstabelle (GPT)
             echo -e "\t${standard}Typ:\t${green}$pt${standard}\t   Device: ${cyan}/dev/${device}${standard}\tDatei: ${blue}${backup_file}.GPT${violet}" 1>&2
             $(sudo sgdisk -b ${backupdir}${backup_file}.GPT /dev/${device} 1>&2)
             echo ${standard} 1>&2
             ;;
	*)   # alle weiteren gefundenen als Fehler ausweisen
             echo -e "${red}====> \t${standard}Sichern Typ:\t${green}$pt${standard}\tDevice:${blue}/dev/${device}${standard}\tBackup: ${red} unbekannter Typ ${green} ${pt}${red} <====${standard}" 1>&2
             ;;
    esac
  done < <(sed -ne 's/^.*\([shm]d[a-zA-Z]\+ *$\)/\1/p' /proc/partitions)
