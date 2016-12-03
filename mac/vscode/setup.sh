#!/bin/bash

createSymlink() {
    if [ "$2" ]; then
        rm "$2"
    fi
    ln -s "$1" "$2"
    echo "Created symlink to $1"
}

createCodeSymlink() {
    createSymlink `pwd`/$1 ~/Library/Application\ Support/Code/User/$1
}

createCodeSymlink settings.json
createCodeSymlink keybindings.json