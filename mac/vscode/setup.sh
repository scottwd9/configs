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

installExtension 2gua.rainbow-brackets
installExtension EditorConfig.EditorConfig
installExtension dbaeumer.vscode-eslint
installExtension dzannotti.vscode-babel-coloring
installExtension eg2.vscode-npm-script
installExtension oderwat.indent-rainbow
installExtension shinnn.stylelint
installExtension xabikos.JavaScriptSnippets
