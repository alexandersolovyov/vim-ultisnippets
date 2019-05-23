#!/bin/sh

# file: refresh-doc.sh
# Author: Alexander Solovyov (solovyov-alexander@yandex.ru)

# This file is a part of my snippets set for UltiSnips.

# This script is for quickly synchronizing help files.

# Copy documentation from snippets folder to "doc"
# and index it
cp -u doc/*.* $HOME/.vim/doc/
vim -c ':helptags ~/.vim/doc/' -c ':q!'

