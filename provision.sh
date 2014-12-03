#!/bin/bash

set -e
set -x

sudo /bin/bash -c "
if [[ ! "$LANG"="en_US.UTF-8" ]]; then
  export LANGUAGE=en_US.UTF-8
  export LANG=en_US.UTF-8
  export LC_ALL=en_US.UTF-8
  locale-gen en_US.UTF-8
  dpkg-reconfigure locales
fi

apt-get update
apt-get upgrade -y
apt-get install -y xubuntu-desktop 
apt-get install -y git eclipse maven openjdk-6-jdk gnome-terminal firefox
"

echo 'mode: off' > ~/.xscreensaver

cd $HOME

if [[ ! -e X11RDP-o-Matic ]]; then
   git clone https://github.com/scarygliders/X11RDP-o-Matic.git
   cd X11RDP-o-Matic
   sudo ./X11rdp-o-matic.sh --justdoit
   echo xfce4-session >~/.xsession
fi

cd $HOME


cat << EOF >> /home/vagrant/.profile
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/
EOF

source /home/vagrant/.profile


set +e
