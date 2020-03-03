# A docker image novnc desktop with q4wine  for installing wine apps

A docker image with  q4wine x11vnc & noVNC

Thanks to Creator of noVNC : Joel Martin (github@martintribe.org). https://novnc.com/info.html

Thanks to Oleksii S. Malakhov the owner of q4wine, https://sourceforge.net/projects/q4wine/

The idea to create an image was inspired by the Kyle Anderson's  solarkennedy/wine-x11-novnc-docker at https://github.com/solarkennedy/wine-x11-novnc-docker. Thanks to Kyle Anderson

Usage :-

To create a wnovnc container (name wnovnc) using bkjaya1952/q4wine-x11vnc-novnc-docker

Refer:- https://hub.docker.com/r/bkjaya1952/q4wine-x11vnc-novnc-docker

On the Ubuntu terminal

<code>sudo docker create -t -p 8008:8080 --name wnovnc --privileged=true bkjaya1952/q4wine-x11vnc-novnc-docker</code>

<code>sudo docker start wnovnc</code>

<code>xdg-open http://localhost:8008/vnc_lite.html</code>

Then the novnc desktop with q4wine will appear on the web browser at the startup.

At the first run of the docker container , you will have to run the first startup wizard to configure the q4wine as follows.

The it will automatically download wine and install.

<img src="https://raw.githubusercontent.com/bkjaya2020/q4wine-x11vnc-noVNC-docker/master/Screenshot%20from%202020-03-01%2012-26-54.png" alt="https://raw.githubusercontent.com/bkjaya2020/q4wine-x11vnc-noVNC-docker/master/Screenshot%20from%202020-03-01%2012-26-54.png" width="625" height="520">


<img src="https://raw.githubusercontent.com/bkjaya2020/q4wine-x11vnc-noVNC-docker/master/Screenshot%20from%202020-03-01%2012-27-41.png" alt="https://raw.githubusercontent.com/bkjaya2020/q4wine-x11vnc-noVNC-docker/master/Screenshot%20from%202020-03-01%2012-27-41.png" width="625" height="520">


<img src="https://raw.githubusercontent.com/bkjaya2020/q4wine-x11vnc-noVNC-docker/master/Screenshot%20from%202020-03-01%2012-28-27.png" alt="https://raw.githubusercontent.com/bkjaya2020/q4wine-x11vnc-noVNC-docker/master/Screenshot%20from%202020-03-01%2012-28-27.png" width="625" height="520">


If you want to get the novnc desktop with q4wine after closing it, please follow the following steps

On the desktop, right click the mouse to get the fluxbox menu

<img src="https://raw.githubusercontent.com/bkjaya2020/q4wine-x11vnc-noVNC-docker/master/menu1.png" alt="https://raw.githubusercontent.com/bkjaya2020/q4wine-x11vnc-noVNC-docker/master/menu1.png" width="625" height="520">

To get the wnovnc desktop with q4wine panel

On the menu go to sub menus and ckick Applications>Shells>Bash

How to change the timezone

After quitting the wnovnc

On the terminal enter

<code>vim /etc/timezone</code>

Then the timezone file is opened

Go to the top line of the file , press insert key on your key board and enter your timezone ( ie Asia/Colombo)

Then press the Esc key and Shift :x to save & quit the file


