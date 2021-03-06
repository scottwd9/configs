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

installExtension() {
    code --install-extension $1
}

createCodeSymlink settings.json
createCodeSymlink keybindings.json

installExtension christian-kohler.npm-intellisense
installExtension christian-kohler.path-intellisense
installExtension CoenraadS.bracket-pair-colorizer-2
installExtension dbaeumer.vscode-eslint
installExtension dracula-theme.theme-dracula
installExtension EditorConfig.EditorConfig
installExtension eg2.vscode-npm-script
installExtension esbenp.prettier-vscode
installExtension ms-python.python
