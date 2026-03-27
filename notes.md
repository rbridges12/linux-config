## System Tray With i3/polybar
Once a system tray is added to the polybar config, a background application called snixembed must be installed to interoperate between old and new status notification protocols.

To install snixembed, first install dependencies using `install-utils` then run the following:
```bash
git clone https://git.sr.ht/~steef/snixembed
cd snixembed
make
sudo make install
```

Finally, `snixembed --fork` must be run in the background at startup.

Sources: 
- [reddit](https://www.reddit.com/r/i3wm/comments/jmiuzs/i3_discord_tray_icon_not_showing/)
- [snixembed](https://git.sr.ht/~steef/snixembed)

## Launching background apps on i3 startup
There are probably many ways to do this, but an effective method I've found is to start them at the end of the i3 config file using the `exec` or `exec_always` commands. I have no idea why, but some applications fail to launch if you run them directly with the `exec` commands (Talon for example). In these cases, a workaround is to make a separate script that launches the desired app, and then execute that script using `exec` in the config file.

## Installing i3-gaps on ubuntu
TODO: find actual explanation/solution

when you apt install i3-gaps and then attempt to run i3wm with gaps in the config file, it always seems to fail (this probably means there's something weird going on that is causing it not to be installed). To fix this, you can run `sudo apt purge i3* && sudo apt install i3-gaps` and it somehow seems to fix the problem.

## fully transferring vscode config
Instead of trying to be a Linux purist and set up a script to fully copy over and transfer all of the VSCode config files to a new installation, I've chosen to just use the built in VSCode settings sync feature that does it all for me really easily. One small thing to note if you get an error about password storage when trying to log into a GitHub account is that you may have to manually tell it to use gnome keyring. Further instructions in the sources.

In order to make the latex-workshop extension work, you also need to install texlive and latexmk: `sudo apt install texlive latexmk`.

Sources:
- [settings sync and keychain issues](https://code.visualstudio.com/docs/editor/settings-sync)
- [latex-workshop](https://nevalsar.hashnode.dev/compiling-latex-with-ubuntu-and-visual-studio-code)

## checking if fonts are installed
`fc-list` will list all font font files installed on the system, along with their ordinary names and styles. `fc-match` can be used to test a font pattern.

Sources:
- [polybar docs](https://github.com/polybar/polybar/wiki/Fonts)

## zsh
Use oh-my-zsh with "lukerandall" theme, `.zshrc` file is provided in this repo.

plugins:
- zsh-vi-mode
- zsh-syntax-highlighting
- zsh-autosuggestions
- git
- virtualenvwrapper
- fzf

## gnome terminal
I use gnome terminal with some changed settings to make it nicer. Here is the conf dump:
```
[legacy]
default-show-menubar=false
theme-variant='dark'

[legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9]
background-color='rgb(40,44,52)'
bold-is-bright=true
font='Hack 16'
foreground-color='rgb(170,177,190)'
palette=['rgb(46,52,54)', 'rgb(223,108,117)', 'rgb(151,194,121)', 'rgb(246,192,100)', 'rgb(97,175,239)', 'rgb(198,120,221)', 'rgb(86,182,194)', 'rgb(170,178,191)', 'rgb(119,119,119)', 'rgb(223,108,117)', 'rgb(151,194,121)', 'rgb(240,198,116)', 'rgb(97,175,239)', 'rgb(198,120,221)', 'rgb(86,182,194)', 'rgb(171,178,191)']
use-system-font=false
use-theme-colors=false
```

This can be exported using `dconf dump /org/gnome/terminal/ > gnome_terminal_settings.txt` and imported using `dconf load /org/gnome/terminal/ < gnome_terminal_settings.txt`. My `gnome_terminal_settings.txt` is provided in the repo.

sources:
- [reddit post](https://www.reddit.com/r/Ubuntu/comments/mjrqxy/how_to_export_gnome_terminal_settings_profiles/)

## Ryzen 7900 integrated graphics drivers
The default ubuntu 20.04 installation does not support the AMD Radeon integrated graphics of my cpu. to get this working, I first updated mesa to a later version:
```bash
sudo apt install mesa-utils
sudo add-apt-repository ppa:kisak/kisak-mesa
sudo apt update
sudo apt upgrade
sudo apt --fix-broken install
sudo apt upgrade
```
mesa version can be verified using `glxinfo -B`. Next, the AMD graphics driver can be installed by following the instructions [here](https://amdgpu-install.readthedocs.io/en/latest/install-prereq.html).

Sources:
- [reddit thread](https://www.reddit.com/r/linuxhardware/comments/13srn38/ubuntu_22042_and_amd_ryzen_9_7900x_video_driver/)
- [AMD docs](https://www.reddit.com/r/linuxhardware/comments/13srn38/ubuntu_22042_and_amd_ryzen_9_7900x_video_driver/)

## MediaTek MT7922 connectivity issues
I encountered some connectivity issues with my wifi card, where every few minutes it would lose connection to the network for a few minutes. `modprobe -r mt7921e && modprobe mt7921e` seemed to fix the issue.

Update: on our new router, this has started happening again very frequently (maybe only on 5G?) and restarting the kernel module doesn't seem to help. can be fixed temporarily by disconnecting and reconnecting to wifi network.

Sources:
- [arch wiki](https://bbs.archlinux.org/viewtopic.php?id=286981)

## GPG key setup
TODO

## MATLAB installation/setup
First, download the installer zip file for linux and unzip it into a directory. Then, follow the instructions in the readme as normal, by running `./install`. Follow the steps and the installer as normal except for the location to install MATLAB. Instead of the default location, choose a location in the user folder, such as `/home/riley/matlab/R20XXa`. This will allow additional packages/add-ons to be installed in place without MATLAB needing sudo privileges (this also means we don't need to run `./install` with sudo). Additionally, this means the matlab installer will not have permission to create a symlink to the executable.

To allow matlab to be launched from dmenu, create a script that runs matlab with the `-desktop` option (see run_matlab.sh). Then create a symbolic link to this script: `sudo ln -s /path/to/script/run_matlab.sh /usr/local/bin/matlab`.

Once installed, the rendered fought may look terrible due to antialiasing being turned off by default (why matlab?). To fix this, go to settings->fonts and there is a small checkbox at the bottom of the form allowing you to turn it on. Additionally, the new UI for matlab (including dark mode) can be installed via the add-ons menu. Search for "New MATLAB Desktop (beta)".

## Bluetooth problems with Airpods
For some reason you have to change a setting in the bluetooth configuration.

Sources:
- [ubuntu wiki](https://askubuntu.com/questions/1408647/unable-to-pair-airpods-pro-with-ubuntu-22-04)

## Arduino
`arduino-cli` is good but can be kind of a pain to install libraries with. Make sure to install the bash/zsh completions to make it easier to use.

## TODO list for saving stuff before reinstall
- look through git repos and commit everything
- check commonly used apps for config changes
- .config
- go through all userspace dirs
- upload/copy all important local files to flashdrive or cloud
  - documents
  - pictures
  - videos

## KSP

## git
- set vim to default editor

## latex
Use latex workshop vscode extension, install texlive packages as the instructions for the extension say.