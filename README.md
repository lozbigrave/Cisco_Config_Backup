# Cisco_Config_Backup
A handy Linux tool to login to network devices and download their configuration using TFTP.

Use this simple setup to automatically login to a Cisco network device (from a Linux box) and download its configuration to a TFTP server. Your Cisco device should be SSH enabled, but this can also work with telnet. See ‘telnet example.txt’

This is tested on a Cisco 3500 series switch using SSH, and telnet to a Ubuiqity switch. 

Setting it up:

First, install a TFTP server somewhere.

Install the program 'expect' on your Linux box, plus an SSH/telnet client if not already there.

Then, start by adding the required user and permissions to your Cisco network device as listed in the file ‘cisco switch config.txt’

Set your Cisco device IP and other variables in the shell script ‘cisco_autobackup.sh’

You should only need to change these variables:

set username 
set hostname 
set password 
set tftpserver 

And finally:

Run the shell script manually, or...

Automate it to run at 5 past midnight (optional) within crontab

5 0 * * * /root/TFTP/cisco_autobackup.sh >/dev/null 2>&1


