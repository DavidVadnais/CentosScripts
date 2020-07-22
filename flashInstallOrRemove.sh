#!/bin/sh

# The purpose of this script is to install/uninstall flash for hulu on firefox in centos8

[[ -z "${1}" ]] && echo "I cant work without an input of on or off" && exit 1

installOrRemove=${1}

if [ "${installOrRemove}" = "install" ]; then
  echo "installing flash"
  dnf update
  dnf -y upgrade

  rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm
  rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
  dnf install -y flash-plugin flash-player-ppapi alsa-plugins-pulseaudio libcurl python3-devel
  sed -i '/WaylandEnable=false/s/^#*//g' /etc/gdm/custom.conf
else
  echo "removing flash"
  sudo sed -i '/WaylandEnable=false/s/^#*/#/g' /etc/gdm/custom.conf
  sudo dnf remove flash-plugin flash-player-ppapi alsa-plugins-pulseaudio

fi

exit 0
