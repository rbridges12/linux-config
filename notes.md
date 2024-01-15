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
TODO

## GPG key setup
TODO

## MATLAB i3wm chicanery
TODO
