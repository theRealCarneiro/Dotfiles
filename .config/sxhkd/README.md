# SXHKD

SXHKD allows you to pass multiple config files when starting the daemon (sxhkd -c config1 config2), so I use the sxhkdrc file as general configuration (WM independent) and have a config for a specific window manager, there's a script in .local/bin called sxhkdl that launches sxhkd with the window manager config (it uses the global variable WM to know which wm you're running)
