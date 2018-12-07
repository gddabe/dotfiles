#!/bin/bash

#echo $TR_TORRENT_DIR
#echo $TR_TORRENT_NAME
#echo $TR_TORRENT_ID

TR_TORRENT_DIR="/Volumes/ramdisk"
TR_TORRENT_NAME="SSNI-358.mp4"

DESTFOLDER="/Volumes/My Book/test"
LOGFILENAME="transmissionlog.txt"

exec >> "${DESTFOLDER}"/"${LOGFILENAME}" 2>&1
# exec &> "${DESTFOLDER}"/"${LOGFILENAME}"

FULLFILENAME=$(basename -- "${TR_TORRENT_NAME}")
FILENAME="${FULLFILENAME%.*}"
EXTENSION="${FULLFILENAME##*.}"

cd "${TR_TORRENT_DIR}" &&
./jav -o . -s $FILENAME &&
mv "${TR_TORRENT_DIR}"/"${FULLFILENAME}" "${TR_TORRENT_DIR}"/"${FILENAME}"/ &&
mv "${TR_TORRENT_DIR}"/"${FILENAME}"/ "${DESTFOLDER}"/
