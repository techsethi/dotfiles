# use same prefix as screen
set -g prefix C-a
unbind C-b

# get pbcopy/pbpaste working again on OS X
# see https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard
# set-option -g default-command "reattach-to-user-namespace -l bash"

# more responsive keys
set -sg escape-time 1

# start window and pane numbers at 1
set -g base-index 1
setw -g pane-base-index 1

setw -g mode-keys vi

# reload config
bind r source-file ~/.tmux.conf \; display "Reloaded!"

# hitting prefix twice sends literal prefix
bind C-a send-prefix

# more logical pane creation keys
bind | split-window -h
bind - split-window -v

# vim movement for pane navigation, window navigation, and resizing panes
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
bind -r C-h select-window -t :-
bind -r C-l select-window -t :+
bind H resize-pane -L 5
bind J resize-pane -D 5
bind K resize-pane -U 5
bind L resize-pane -R 5

# disable mouse
setw -g mode-mouse off

# proper colour
set -g default-terminal "screen-256color"

# status bar
set -g status-utf8 on
set -g status-bg colour11
set -g status-fg colour8
set -g status-justify centre
set -g status-left-length 40

set -g status-left ' #[bold]❐ #S#[default] ⡇'
set -g status-right '#[bold]#(whoami) ● #H#[default] '
set -g status-right-length 60
set -g status-left-length 60

# highlight active window
setw -g window-status-current-bg colour166
setw -g window-status-current-fg colour15
setw -g window-status-current-attr bold
setw -g window-status-current-format ' #I #W '

set -g pane-active-border-fg yellow
set -g pane-border-fg white

# window status
setw -g monitor-activity on
set -g visual-activity on

# vim like copy/paste
unbind p
bind p paste-buffer
bind -t vi-copy 'v' begin-selection
bind -t vi-copy 'y' copy-selection

#set -g default-command "reattach-to-user-namespace -l `which bash`"
