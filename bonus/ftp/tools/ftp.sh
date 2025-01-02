#!/bin/bash
echo "Setting up vsftpd..."
cat << EOF >> /etc/vsftpd.conf
write_enable=YES
local_root=$FTP_DIR
EOF
mkdir -p /var/run/vsftpd/empty
adduser --disabled-password --gecos "" "$FTP_USER"
echo "$FTP_USER:$FTP_PASSWORD" | chpasswd
echo "Configuring directory: $FTP_DIR"
mkdir -p "$FTP_DIR"
chown -R "$FTP_USER:$FTP_USER" "$FTP_DIR"
chmod -R 755 "$FTP_DIR"
echo "Starting vsftpd..."
vsftpd /etc/vsftpd.conf
