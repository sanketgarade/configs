# making a bootable USB for linux

## format an existing usb drive
## https://www.macupdate.com/blog/post/82-how-to-format-usb-on-mac
Type the following command and hit enter to list all the mounted devices available in your system
```diskutil list```

From this list, go ahead and select the device that you want to format and use the Terminal to format it.
Use the following syntax to format the drive
```diskutil erasedisk FILE_SYSTEM DISK_NAME DISK_IDENTIFIER```

For the Disk name, you can enter any name you want to give your device. 
To find your Disk identifier, refer to the list you found after typing the command diskutil list. 
Under the IDENTIFIER column, you'll find your identifier. 

The file system option depends on your preference. The syntax is:.
Formatting to MacOS Extended Journaled(JHFS+) - JHFS+
Formatting to MacOS Extended (HFS+) - HFS+
Formatting to MS-DOS FAT - FAT32
Formatting to ExFAT - ExFAT


For example, if you want to format your drive to macOS Extended Journaled and rename it to "MyDisk," you can enter the terminal command as below:

```diskutil erasedisk JHFS+ MyDisk disk2```
