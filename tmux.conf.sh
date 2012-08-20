# use same prefix as screen
set -g prefix C-a
unbind C-b

# get pbcopy/pbpaste working again on OS X
# see https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard
set-option -g default-command "reattach-to-user-namespace -l zsh"

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
bind ` last-window

# disable mouse
setw -g mode-mouse off

# proper colour
set -g default-terminal "screen-256color"

# status bar
set -g status-utf8 on
set -g status-justify centre

set -g status-left-length 52
set -g status-right-length 451
set -g status-fg white
set -g status-bg colour234
set -g window-status-activity-attr bold
set -g pane-border-fg colour245
set -g pane-active-border-fg colour39
set -g message-fg colour16
set -g message-bg colour221
set -g message-attr bold
set -g status-left '#[fg=colour235,bg=colour252,bold] ❐ #S #[fg=colour252,bg=colour238,nobold]⮀#[fg=colour245,bg=colour238,bold] #h #[fg=colour238,bg=colour234,nobold]⮀'
set -g status-right '#[fg=colour238,bg=colour234,nobold]⮂#[fg=colour245,bg=colour238] #(date +"%F") #[fg=colour252]⮂#[fg=colour235,bg=colour252,bold] #(date +"%H:%M  ")'
set -g window-status-format "#[fg=white,bg=colour234] #I #W "
set -g window-status-current-format "#[fg=colour234,bg=colour39]⮀#[fg=colour25,bg=colour39,noreverse,bold] #I ⮁ #W #[fg=colour39,bg=colour234,nobold]⮀"

# highlight active window
setw -g window-status-current-bg colour166
setw -g window-status-current-fg colour15
setw -g window-status-current-attr bold
setw -g window-status-current-format ' #I #W '

# window status
setw -g monitor-activity on
set -g visual-activity on

# vim like copy/paste
unbind p
bind p paste-buffer
bind -t vi-copy 'v' begin-selection
bind -t vi-copy 'y' copy-selection
