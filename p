#!/bin/sh

tmux new -d -s $(basename $(pwd)) 'kak -s $(basename $(pwd)) -e "exec :connect-terminal<ret>"'
tmux rename-window -t $(basename $(pwd)):1 $(basename $(pwd))
sleep 0.5
tmux send-keys 'lf' 'C-m'
sleep 0.5
tmux select-pane -t 0 #$(basename $(pwd))
tmux split-window -t $(basename $(pwd))
sleep 0.5
tmux a -t $(basename $(pwd))
