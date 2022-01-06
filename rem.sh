#!/bin/sh

help="Remember given command.\n\n
Usage:\t
\tremember [add CMD|list]\n\n
Arguments:\n
\tadd CMD - add given command to list\n
\tlist - list remembered commands"

case "$1" in
    add)
        shift
        echo $@ >> $HOME/.remember;;
        # cat $HOME/.remember|sort|uniq > $HOME/.remember
    list)
        eval $(cat $HOME/.remember|fzf);;
    *)
        echo $help;;
esac

