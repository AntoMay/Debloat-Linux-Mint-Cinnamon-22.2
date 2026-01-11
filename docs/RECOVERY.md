# Recovery Guide

This document explains how to recover the system
if something goes wrong after running the debloat script.

## Reinstall Cinnamon Desktop
```bash
sudo apt install cinnamon-desktop-environment
sudo apt install lightdm
sudo dpkg-reconfigure lightdm
sudo apt --fix-broken install
```
## Recovery from Black Screen / Login Loop

```bash
Ctrl + Alt + F2

sudo apt install cinnamon-desktop-environment lightdm
sudo dpkg-reconfigure lightdm
sudo reboot
```
