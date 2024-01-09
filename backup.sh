#!/bin/bash
 
# Define the folder to be backed up

folder="/home/pi/assistant2"

file="/etc/crontab"
 
# Fixed values for the remote server

remote_user="simonfernau"

remote_ip="104.199.52.229"

remote_folder="/home/simonfernau/backup"
 
# Create a tarball with the current date as the filename

backup_filename="backup_$(date '+%Y%m%d').tar.gz"

tar -czf "$backup_filename" "$folder" "$file"
 
# Transfer the tarball to the remote server using sftp

sftp  -i /home/pi/.ssh/id_ed25519 "$remote_user@$remote_ip" <<EOF

cd "$remote_folder"

put "$backup_filename"

exit

EOF
 
# Remove the local tarball after transfer (uncomment the line below)

rm "$folder/$backup_filename"