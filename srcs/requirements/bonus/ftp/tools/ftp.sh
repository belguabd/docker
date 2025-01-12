#!/bin/bash
echo "Setting up vsftpd..."
cat << EOF >> /etc/vsftpd.conf
write_enable=YES
pasv_enable=YES
pasv_min_port=10000
pasv_max_port=10100
EOF
useradd $FTP_USER
echo "$FTP_USER:$FTP_PASSWORD" | chpasswd
echo "Configuring directory: $FTP_DIR"
mkdir -p "$FTP_DIR"
chmod -R 755 "$FTP_DIR"
mkdir -p /var/run/vsftpd/empty
echo "Starting vsftpd..."
vsftpd /etc/vsftpd.conf
