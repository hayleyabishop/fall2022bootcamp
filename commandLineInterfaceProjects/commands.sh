#Project #1: Command Line
#By Hayley Bishop on July 4th 2022

#The purpose of this document is to practice basic 
#Command Line Interface commands, and to note down
#the meanings of each command. 

#Bash stands for Bourne Again shell. It's from GNU. 
#Different types of shells use different command 
#syntaxes, for the convenience of the user. 

#A Terminal is a program we use to access the shell
#(Think browser:website :: Terminal:shell.)

#Windows' shell is based on MS-DOS (MicroSoft Disk-
#Operating System)

#The command line is called the Shell Prompt. 

#Use command: PS1='$' to show $ at the prompt, and
#leave out the user and computer name. 

#Ctrl-L or: clear clears the terminal. 

#The Shell operates from a directory at a time,
#and is always pointing to a directory. 
#You can ask the shell to tell it what directory
#it's looking at using "pwd" - Print Working 
#Directory

#List contents of a directory: ls

#List contents of a folder named Foldername:
#ls Foldername

#Change working directory: cd

#show hidden (all) files: ls -a 

#Detailed (long) list: ls -l

#List home ~ directory: ls ~

#change to desired directory: cd /Users/Desired

#change to home directory: cd

#New folder (make directory): mkdir

#Move folder/file: mv

#Create empty files: touch files.file

#Delete files/folders: rm

#Delete EMPTY folders: rmdir

#Don't know where we are? use ../ to mean the
#parent directory!

#Read a whole file: cat file.txt

#Read a file slowly, one screen at a time: less
# Ex. less file.txt
#Press spacebar to go to the next screen,
#press b to go back to the previous screen, 
#press / to SEARCH for a word, 
#press q to quit. 

#Show detailed help info about commands: man
#man is for Manual! Ex. man ls
#manual will show the parameters we can enter
#for each command. 

#Filter the contents of a file:

#Show all the unique lines in a file: 
#uniq file.txt

#Filter all lines for ones that include a word. 
#grep word file.txt
#grep is our word filter. Stands for 
#global regular expression print. 

#We use the pipeline like in powershell to pass
#the output of the left items to the right of the
#pipeline |. 

#Count the number of words: wc (word count)

#wc -l is lines
#wc -w is words
#wc -m is characters

#ex. grep word file.txt | wc -l

#Sort alphanumerically: sort
#ex. cat file.txt | sort


#Let's begin the challenge. 

#Create a file called commands.md.

cd C:\Users\hayle\source\repos\fall2022bootcamp

hayley@DESKTOP-H2TI7PE:~$ pwd
/home/hayley
hayley@DESKTOP-H2TI7PE:~$ cd C:\Users\hayle\source\repos\fall2022bootcamp
-bash: cd: C:Usershaylesourcereposfall2022bootcamp: No such file or directory
hayley@DESKTOP-H2TI7PE:~$ mkdir source/repos/fall2022bootcamp
mkdir: cannot create directory ‘source/repos/fall2022bootcamp’: No such file or directory
hayley@DESKTOP-H2TI7PE:~$ mkdir source
hayley@DESKTOP-H2TI7PE:~$ cd source
hayley@DESKTOP-H2TI7PE:~/source$ mkdir repos
hayley@DESKTOP-H2TI7PE:~/source$ cd repos
hayley@DESKTOP-H2TI7PE:~/source/repos$ mkdir fall2022bootcamp
hayley@DESKTOP-H2TI7PE:~/source/repos$ cd fall2022bootcamp

##At this point, I noticed I was supposed to store my files here. Thinking that
##the Ubuntu on Windows program was an emulator with a separate file structure, 
##I wondered how I could possibly save files to "The Desktop" or publish items
##to GitHub. I asked for help.

##I found out that, if I continue to close the current directory using cd .., 
##I eventually got to a place where I either had my c/ directory or my wsl directory.

hayley@DESKTOP-H2TI7PE:/$ ls
bin   dev  home  lib    lib64   lost+found  mnt  proc  run   snap  sys  usr
boot  etc  init  lib32  libx32  media       opt  root  sbin  srv   tmp  var
hayley@DESKTOP-H2TI7PE:/$ cd mnt
hayley@DESKTOP-H2TI7PE:/mnt$ ls
c  wsl

#I found that the C directory included all of my files, folders, and documents 
#That my 'real' C:/ drive contained. 
hayley@DESKTOP-H2TI7PE:/mnt$ cd c
hayley@DESKTOP-H2TI7PE:/mnt/c$ ls
ls: cannot access 'DumpStack.log.tmp': Permission denied
ls: cannot access 'hiberfil.sys': Permission denied
ls: cannot access 'pagefile.sys': Permission denied
ls: cannot access 'swapfile.sys': Permission denied
'$Recycle.Bin'             OneDriveTemp           ProgramData                  Users          swapfile.sys
'$WinREAgent'              PerfLogs               Python310                    Windows        temp
'Documents and Settings'  'Program Files'         Recovery                     hiberfil.sys
DumpStack.log.tmp        'Program Files (x86)'  'System Volume Information'   pagefile.sys
hayley@DESKTOP-H2TI7PE:/mnt/c$ cd users
hayley@DESKTOP-H2TI7PE:/mnt/c/users$ ls
'All Users'   Default  'Default User'   Public   desktop.ini   hayle
hayley@DESKTOP-H2TI7PE:/mnt/c/users$
hayley@DESKTOP-H2TI7PE:/mnt/c/users$ cd hayle
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle$ ls
#and the /hayle/ folder matched my File Explorer's /hayle/ folder. 

##I then continued to open my bootcamp folder, and continue the project work.

##PROJECT #1:

hayley@DESKTOP-H2TI7PE:/$ cd /mnt/c/users/hayle/source/repos/fall2022bootcamp/
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp$ cd 'commandLineInterfaceProjects'
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects$ touch commands.md
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects$ mkdir soups && cd soups
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects/soups$ touch ChickenNoodle.html && touch BakedPotato.css
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects/soups$ ls
BakedPotato.css  ChickenNoodle.html
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects/soups$ mkdir js && cd js
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects/soups/js$ pwd
/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects/soups/js
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects/soups/js$ cd ..
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects/soups$ touch js/CreamyTomato.js
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects/soups$ cd js
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects/soups/js$ ls
CreamyTomato.js
#Heck yeah!! You don't have to move a file after making it, you can just make it using touch with partial address! /folder/file.js
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects/soups/js$ cd ..
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects/soups$ touch readme.txt
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects/soups$ rm readme.txt
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects/soups$ ls
BakedPotato.css  ChickenNoodle.html  js
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects/soups$ cd js && ls
CreamyTomato.js
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects/soups/js$ mv CreamyTomato.js BroccoliCheddar.js
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects/soups/js$ ls
BroccoliCheddar.js
hayley@DESKTOP-H2TI7PE:/mnt/c/users/hayle/source/repos/fall2022bootcamp/commandLineInterfaceProjects/soups/js$

