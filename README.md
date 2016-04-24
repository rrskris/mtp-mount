# mtp-mount

This is a simple bash script to mount the android phone to your linux system.

For this script to work you would need to install the following packages
mtpfs libfuse-dev libmad0-dev

This script needs two arguments to run <mount|umount> </path/to/mount/phone>
./mount_mtp.sh mount My_phone

After mounting, it can be accessed by the absolute "/path/to/phone/mount".. we are not really required to need the mtp:// protocol which cannot be accessed by the regular file browsers nor can be navigated through the terminal.
There are also a few of MTP file browsers but they mostly freez and choke out.

For now this is working really fine and if you feel that you any thing needs to be added please free to branch and improve, I'd be glad for the same.

More information available http://wizadmin.blogspot.in/2014/11/accessing-android-device-partition-from.html

Thank you!
