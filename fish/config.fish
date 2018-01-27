set -U fish_user_paths $HOME/Documents/scripts /usr/local/go/bin /opt/anaconda3/bin

source /usr/share/autojump/autojump.fish

# Start up a local tiddlywiki server
function tw
    tiddlywiki ~/Dropbox/wiki --server 1234
end

# Start emacs client terminal
function ect
  emacsclient -t
end

# Start emacs client gui
function ecg
  emacsclient -c &
end

# Kill the emacs daemon
function ecq
    emacsclient -e '(kill-emacs)'
end

# Kill emacs safely (save any unsaved buffers, etc.)
function ecqs
    emacsclient -e '(client-save-kill-emacs)'
end

# Vim keybindings for fish shell
fish_vi_mode

# Get rid of the greeting @ shell startup
set fish_greeting
