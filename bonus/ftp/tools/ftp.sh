#!/bin/bash

mkdir -p /var/run/vsftpd/empty
echo "Setting up vsftpd..."
cat << EOF > /etc/vsftpd.conf
listen=YES
write_enable=YES
pasv_enable=YES
anonymous_enable=NO
local_enable=YES
pasv_min_port=10000
pasv_max_port=10100
EOF

echo "Creating ftp user..."
useradd -m $FTP_USER
echo "$FTP_USER:$FTP_PASSWORD" | chpasswd
echo "Starting vsftpd..."

vsftpd /etc/vsftpd.conf