#!/bin/bash
#
# Linux Mint Cinnamon 22.2 Debloat Script
# Switch to KDE Plasma (Kubuntu-like)
#
# Author: AntoMay
# Facebook: https://www.facebook.com/epoy.saputra.73
#
# License: MIT
# Copyright (c) 2025 AntoMay
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, subject to the following conditions:
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
# Script debloat Linux Mint Cinnamon - persis perintah user, resumable, TTY-safe

echo "=== Disable LightDM ==="
sudo systemctl disable lightdm || true
sudo systemctl stop lightdm || true

echo "=== Purge Firefox, Thunderbird, Transmission ==="
sudo apt purge -y firefox firefox-locale-* || true
sudo apt purge -y thunderbird thunderbird-locale-* thunderbird-gnome-support xul-ext-* || true
sudo apt purge -y transmission-gtk transmission-common || true

echo "=== Purge LibreOffice ==="
sudo apt purge -y libreoffice-gnome || true
sudo apt purge -y libreoffice-base-core || true
sudo apt purge -y libreoffice-core || true
sudo apt purge -y libreoffice-common || true
sudo apt purge -y libreoffice-draw || true
sudo apt purge -y libreoffice-help-common || true
sudo apt purge -y libreoffice-help-en-us || true
sudo apt purge -y libreoffice-impress || true
sudo apt purge -y libreoffice-uiconfig-common || true
sudo apt purge -y libreoffice-style-colibre || true
sudo apt purge -y libreoffice-uiconfig-calc || true
sudo apt purge -y libreoffice-uiconfig-draw || true
sudo apt purge -y libreoffice-uiconfig-impress || true
sudo apt purge -y libreoffice-uiconfig-writer || true
sudo apt purge -y libreoffice-gtk3 || true

echo "=== Purge Vim, Scanning & Printer Tools ==="
sudo apt purge -y vim vim-runtime vim-common vim-tiny || true
sudo apt purge -y simple-scan || true
sudo apt purge -y system-config-printer system-config-printer-common || true
sudo apt purge -y timeshift || true

echo "=== Purge Bluetooth, LightDM, GNOME helpers ==="
sudo apt purge -y blueman || true
sudo apt purge -y lightdm-settings || true
sudo apt purge -y gcr gcr4 || true
sudo apt purge -y geoclue-2.0 || true
sudo apt purge -y gkbd-capplet gucharmap || true
sudo apt purge -y onboard || true
sudo apt purge -y yelp yelp-xsl || true

echo "=== Purge MATE, Cinnamon & Mint apps ==="
sudo apt purge -y 'mate*' || true
sudo apt purge -y 'libmate*' || true
sudo apt purge -y 'cinnamon*' || true
sudo apt purge -y 'libcinnamon*' || true
sudo apt purge -y mint-info-cinnamon || true

echo "=== Purge Additional apps ==="
sudo apt purge -y bulky || true
sudo apt purge -y fingwit fprintd libpam-fprintd || true
sudo apt purge -y metacity || true
sudo apt purge -y captain || true
sudo apt purge -y gufw || true
sudo apt purge -y celluloid || true
sudo apt purge -y hypnotix || true
sudo apt purge -y drawing || true
sudo apt purge -y pix || true
sudo apt purge -y sticky || true
sudo apt purge -y thingy || true
sudo apt purge -y xreader || true
sudo apt purge -y webapp-manager || true

echo "=== Purge more packages ==="
sudo apt purge -y im-config || true
sudo apt purge -y xdg-desktop-portal-xapp || true
sudo apt purge -y xdg-desktop-portal-gtk || true
sudo apt purge -y printer-driver-foo2zjs-common || true
sudo apt purge -y network-manager-gnome || true
sudo apt purge -y packagekit || true
sudo apt purge -y policykit-1-gnome || true
sudo apt purge -y language-pack-gnome-en-base || true
sudo apt purge -y 'mint*' || true
sudo apt purge -y 'gnome*' || true
sudo apt purge -y baobab || true

echo "=== Remove specific packages ==="
sudo apt remove -y circle-flags-svg || true
sudo apt remove -y file-roller || true
sudo apt remove -y gir1.2-nma-1.0:amd64 || true
sudo apt remove -y gir1.2-packagekitglib-1.0 || true
sudo apt remove -y gstreamer1.0-packagekit || true
sudo apt remove -y libnma-common || true
sudo apt remove -y libnma-gtk4-0:amd64 || true
sudo apt remove -y libnma0:amd64 || true
sudo apt remove -y libpackagekit-glib2-18:amd64 || true
sudo apt remove -y onboard-common || true
sudo apt remove -y python3-repolib || true
sudo apt remove -y libgnomekbd-common || true
sudo apt remove -y libgnomekbd8:amd64 || true
sudo apt remove -y libsoup-gnome-2.4-1:amd64 || true

echo "=== Update & Restore Mint Mirrors ==="
sudo apt update || true
sudo apt install -y mint-mirrors || true

echo "=== Remove leftover desktop files ==="
sudo rm -f /usr/share/applications/mint-meta-codecs.desktop || true

echo "=== Autoremove & Clean ==="
sudo apt autoremove --purge -y || true
sudo apt autoclean -y || true

echo "=== Debloat finished ==="
 
cat << "EOF"
██████  ███████ ██████  ██       ██████   █████  ████████     ███████ ██    ██ ██   ██ ███████ ███████ ███████         
██   ██ ██      ██   ██ ██      ██    ██ ██   ██    ██        ██      ██    ██ ██  ██  ██      ██      ██              
██   ██ █████   ██████  ██      ██    ██ ███████    ██        ███████ ██    ██ █████   ███████ █████   ███████         
██   ██ ██      ██   ██ ██      ██    ██ ██   ██    ██             ██ ██    ██ ██  ██       ██ ██           ██         
██████  ███████ ██████  ███████  ██████  ██   ██    ██        ███████  ██████  ██   ██ ███████ ███████ ███████         
                                                                                                                       
                                                                                                                       
███████ ██ ██       █████  ██   ██ ██   ██  █████  ███    ██     ██ ███    ██ ███████ ████████  █████  ██      ██      
██      ██ ██      ██   ██ ██   ██ ██  ██  ██   ██ ████   ██     ██ ████   ██ ██         ██    ██   ██ ██      ██      
███████ ██ ██      ███████ ███████ █████   ███████ ██ ██  ██     ██ ██ ██  ██ ███████    ██    ███████ ██      ██      
     ██ ██ ██      ██   ██ ██   ██ ██  ██  ██   ██ ██  ██ ██     ██ ██  ██ ██      ██    ██    ██   ██ ██      ██      
███████ ██ ███████ ██   ██ ██   ██ ██   ██ ██   ██ ██   ████     ██ ██   ████ ███████    ██    ██   ██ ███████ ███████ 
                                                                                                                       
                                                                                                                       
███████ ██████  ██████  ███    ███           ██████   █████  ███    ██       ██   ██ ██████  ███████                   
██      ██   ██ ██   ██ ████  ████           ██   ██ ██   ██ ████   ██       ██  ██  ██   ██ ██                        
███████ ██   ██ ██   ██ ██ ████ ██     █████ ██   ██ ███████ ██ ██  ██ █████ █████   ██   ██ █████                     
     ██ ██   ██ ██   ██ ██  ██  ██           ██   ██ ██   ██ ██  ██ ██       ██  ██  ██   ██ ██                        
███████ ██████  ██████  ██      ██           ██████  ██   ██ ██   ████       ██   ██ ██████  ███████                   
                                                                                                         
                                                                                                                                                                                                              
Debloat complete! You are ready for KDE installation.
Script ini Dibuat Oleh : AntoMay
https://web.facebook.com/epoy.saputra.73
EOF              
                                                                                                                       
