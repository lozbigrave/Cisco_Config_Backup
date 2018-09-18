#!/usr/bin/expect -f
 
# Septempber 2018 Loz Bigrave 

# Set Variables
set username backup
set hostname 10.0.0.96
set password dfkjdsfjdfs
set tftpserver 10.0.0.30
set command "copy startup-config tftp://$tftpserver"
set timeout 5

log_file -a /root/TFTP/debug_autobackup.log

# no need to change anything after here
 
match_max 100000

# Start the session

spawn ssh -o StrictHostKeyChecking=no $username@$hostname

expect "*?assword:*"
 
send  "$password\r"
 
#send  "\r"
 
expect "MySwitchHostname>"

send  "$command\r"

expect "Address*"

send  "\r"

expect "Destination*"

send  "\r"

expect "*copied*"

exit
