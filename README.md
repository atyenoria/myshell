#description
These are my shellscript tools for work efficiency.

I'm using these items for accerelating my work.

Please make use of these items.

However I'm not resposible for any damages, when something wrong happens.

#Assumption

These scripts contais **node.js modules,brew packages**.

So, if you use them, preinstall those packages.

---
##1: Startup file
filename: **autoload**

####overview:
Startup script for Mac OSX.
This file is used as supporting below files.

When booting mac os x, it's read in like .bashrc or .bash_profile.
##### installation method:
1. go to osx's **system preferences**, and click **users and group**		
2. next, clik **login items**,and add this file

---
##2: chrome download auto unzip 
####content:

 **s_chrome** for startup script
  
 **d_chrome** for dameon script	

####overview:
unzip archive files automatically and easily

##### installation method:
1. chmod +x these items,and pass this for globally		
2. change DOWNLOADS PATHS in **autoload file** to proper destination in google chrome

#####appendix:
log and pid files are located in tmp/log,tmp/log

--- 
##3: chmod+x automatically for shellscript

####content:

 **s_cxshell** for startup script
  
 **d_cxshell** for dameon script	

####overview:
chmod +x items in specific directory automatically

##### installation method:
1. chmod +x these items,and pass this for globally		

#####appendix:
log and pid files are located in tmp/log,tmp/log

---
##4: download only github repository source

####content:

**gcls** (git clone source only)
  
####overview:
download only github repository source.
remove .git directory automatically.

if you increase files which you want to remove, **modify this section (ls~~,rm ??)**

##### installation method:
1. chmod +x these items,and pass this for globally		

#####appendix:

---