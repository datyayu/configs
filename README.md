# Configs
A repo for saving my usual config files so I don't have to redo all the work everytime I feel like powerwashig my chromebook.

Includes
  - <b>.i3</b>: i3 config files (for <a href="https://github.com/o4dev/i3">o4dev's i3 fork</a>).
  - <b>.mpd</b>: mpd config and required files.
  - <b>.ncmpcpp</b>: Same as above but for ncmpcpp
  - <b>.tmux.conf</b>: I don't really use locally tmux anymore but maybe someone could find this useful.
  - <b>.zshrc.sh</b>: My zsh config (Requires robby_mininal.zsh-theme to be installed).
  - <b>Custom theme.colorscheme</b>: My color scheme for konsole.
  - <b>makefile</b>: A quick installing file for my usual system and developer tools.
  - <b>packages.sh</b>: Used inside makefile for install rails & some npm packages.
  - <b>robby_mininal.zsh-theme</b>: My custom theme for oh-my-zsh.


To use the makefile run ```make preinstall```, add your ssh keys to github and then run ```make install``` to install the developer tools / enviroment runtimes.
</br>
Optionally, you can run ```make complete_install``` to install system dependencies and programs such as i3 and konsole, along with the developer stuff .
