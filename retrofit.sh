#!/bin/bash
# Fixes a bug where the program menu looks a bit weird and the power buttons don't work

# Remove lxqt-about because nobody cares about this
sudo apt remove lxqt-about

# Create a nice lxde-leave directory for the power buttons to live in
sudo wget https://raw.githubusercontent.com/jb2cool/PowerButtonFix/main/lxde-leave.directory -O /usr/share/desktop-directories/lxde-leave.directory

# Fetch a fixed lxde-applications.menu that puts the power buttons into the newly created lxde-leave directory
sudo wget https://raw.githubusercontent.com/jb2cool/PowerButtonFix/main/lxde-applications.menu -O /etc/xdg/menus/lxde-applications.menu

# Fix broken syntax in the policykit rules to make power buttons actually work
sudo wget https://raw.githubusercontent.com/jb2cool/PowerButtonFix/main/00-power.rules -O /etc/polkit-1/rules.d/00-power.rules

# Remove script
rm retrofit.sh
