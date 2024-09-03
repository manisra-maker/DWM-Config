How to install arch with dwm 

1) Give sudo pacman -Syu archinstall archlinux-keyrings 
2) Give archinstall 
3) There choose xorg and All open souce graphics driver 
4) once installed install git 
5) git clone https://git.suckless.org/dwm ,dmenu and st
6) sudo make clean install each 
7) based on error install libxft for fonts and libxinerama

libxft:

A library that provides high-quality font rendering.
Works with X11 to render fonts using the FreeType library.
libxinerama:

A library that provides support for Xinerama.
Xinerama is an extension to the X Window System that enables multi-head display configurations.
Allows applications to be aware of multiple monitors and manage windows across them.

keybinding 

Navigation 

alt+shift+enter -- new window 
alt + h -- left move 
alt + j -- down move 
alt + k -- up move 
alt + k -- right move 
jump workspace -- alt + 1 

Close Tab 

left alt + left shift + c

Open demnu 

alt + p -- open demnu 

Move tabs 

you can move via mouse 

shift the tab workspace 

left alt + left shift + (tab number)

alt + Enter to move a window
 
Install Xrandr 

sudo pacman -S xorg-xrandr

What is it ? 

xrandr is a command-line utility for managing and configuring display settings in X Window System. It allows you to:

List: View available display outputs and their resolutions.
Set: Change display resolutions, orientations, and refresh rates.
Configure: Adjust screen layouts, such as arranging multiple monitors.


To install VirtualBox Guest Additions on Arch Linux, follow these steps:

Update your system:

sudo pacman -Syu

Install the required packages:

sudo pacman -S virtualbox-guest-utils

Enable the VirtualBox guest services:

sudo systemctl enable vboxservice.service
sudo systemctl start vboxservice.service

Reboot your system:

bash
Copy code
sudo reboot


Patches for dwm are 

1) Always centre
2) Useless gaps 
3) Insert Below 

Patching 

Before you patch its important you put all your pacthes in Suckless/patches 

in your dwm we would have the following file 

1) config.def.h 
2) config.h
3) dwm.c

--config.def.h -- C header files 
\--config.h------/

config.h is the customization file 

config.def.h is the copy

So before you patch anything its important you take contents of config.h to config.def.h

So now to patch you must give patch -i , and note you must enter the directory that is to be pacthed 

eg cd /Suckless/dwm/

then give patch -i dwm-always..................... (-i stands for input)

give sudo make clean install 

once done quit dwm to do that you give 

{ MODKEY|ShiftMask, XK_q,      quit,           {0} },

this means MODKEY -alt 
ShiftMask - Shift
XK_q - q key 

Floating mode - alt + F 

always when you patch and it works backup your working patch 

now copy config.def.h to config.h

now copy bk file to config.def.h

now remove bk


sudo make clean install 

Now enter the dwm config file and add more value to gaps 


Incase there is any rejection or when patching fails 

You can always reverse the patch by running the patch file again 

Once you have fixed the patching just remove the rej and orgin files

And once its working just to be safe copy your config.h to config.def.h

Once thats done repatch again and see in reject file what the issue is and see in what line the issue is and add that file 

cp config.def.h.orig to config.def.h (incase it happens)
rm config.def.h.orig

Wallpapers 

You need to use something called feh and use feh --bg-fill

Fading effects

for some fade you can install picom

to configure it enter /etc/xdg and you'll get picom.conf add it in your .xinitrc

Note for patching 

1> always it will patch config.def.h
2> so first create bk then copy config.h to bk 
3> cp config.def.h to config.h


Status bar 

To get a status from dwm what you can do is first 

1) git clone https://git.suckless.org/slstatus

2) Once done give a sudo make clean install you can also follow the read me from the slstatus README on dwm website -- https://git.suckless.org/slstatus/file/README.html

3) Then run the command slstatus 
