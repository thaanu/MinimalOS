# Preperation

Before starting, download the following 2 files.

1. https://ftp.mirrorservice.org/sites/sourceware.org/pub/gcc/releases/gcc-5.3.0/gcc-5.3.0.tar.gz
2. https://ftp.gnu.org/gnu/binutils/binutils-2.25.1.tar.gz


You can copy/paste the link in the browser to download.

After downloading move both the zipped files to same location as **setup.sh**

# How to install
Run the setup.sh file using the following command

`source setup.sh`

In-case you get an error regarding persmission, change the file permission using the following command. (You might need sudo privillages)

`chmod +x setup.sh`


This application has been tested on Ubuntu 16.4.7


# Difficulties

1. You might have to install **qemu-system-x86**
`sudo apt install qemu-system-x86`

2. Update or install **xorriso**
`sudo apt-get install -y xorriso`
