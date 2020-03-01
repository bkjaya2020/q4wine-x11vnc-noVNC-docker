###################################################################################
# Thanks to Creator of noVNC : Joel Martin (github@martintribe.org).              #
# https://novnc.com/info.html                                                     #
# Thanks to Oleksii S. Malakhov the owner of q4wine, 
# https://sourceforge.net/projects/q4wine/                                        #
###################################################################################

FROM ubuntu:18.04
MAINTAINER B.K.Jayasundera

# environment variables
ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \  
    DISPLAY=:0.0 \
    DISPLAY_WIDTH=1024 \
    DISPLAY_HEIGHT=768

ENV DEBIAN_FRONTEND noninteractive

RUN dpkg --add-architecture i386 \
    && apt update \
    && apt -y install xvfb x11vnc xdotool git supervisor net-tools fluxbox gnupg2 xfce4-terminal tzdata q4wine \
    && WINEARCH=win32 \
    && rm -rf /var/lib/apt/lists/*

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
 
WORKDIR /root/
RUN git clone https://github.com/novnc/noVNC.git /root/noVNC \
        && git clone https://github.com/novnc/websockify /root/noVNC/utils/websockify \
        && rm -rf /root/noVNC/.git \
	&& rm -rf /root/noVNC/utils/websockify/.git 

COPY bash.bashrc /etc/bash.bashrc
EXPOSE 8080
CMD ["/usr/bin/supervisord"]
