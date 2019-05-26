
# Quick tmux intro

Protips:
  To ensure 256colors in tmux:
   set -g default-terminal "screen-256color" in bashrc
   bash_alias => alias tmux='tmux -2' to force 256 color

Open a new session:
  tmux new
  tmux new -s [name of session]

List all sessions:
  tmux ls

Attach to a existing session:
  tmux attach-session -t [session id]

Attach to named session:
  tmux a -t [session name]

Attach to a last running session:
  tmux a #

Detach a session:
  tmux d
  ctrl+b d

Kill a session:
  tmux kill-session -t [session name]

tmux prompt:
  ctrl+b :

Windows:
  c create window
  w list window
  n next window
  p previous window
  f find window
  , name window
  & kill window

Managing panes:
  "           <-- horizontal split
  %           <-- vertical split
  <arrowkey>  <-- move between panes
  q           <-- show pane numbers
  x           <-- kill pane
  +           <-- break pane into window
  -           <-- restore pane form window
  <spacebar>  <-- toggle between splits
  z           <-- toggle pane zoom
  :  + resize-pane -U/D/L/R <size>  <-- to resize pane, go into tmux prompt first
  [           <-- copy mode (use vi/arrows bindings to yank)

Misc:
  d           <-- detach tmux
  :           <-- prompt
  t           <-- show clock
  ?           <-- show help

tmux configuration:
  ~/.tmux.conf
  tmux source-file ~/.tmux.conf
  prompt + source ~/.tmux.conf

Change prefix:
  set -g prefix `

Plugin manager:
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  update ~/.tmux.conf
  prefix + I to fetch a plugin
  prefix + U to udpate the plugin
  prefix + alt + u to remove a plugin

References:
Cheat sheet - https://gist.github.com/MohamedAlaa/2961058
Tao Tmux - https://leanpub.com/the-tao-of-tmux


