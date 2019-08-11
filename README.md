## vim configuration for mac and ubuntu

Here I am sharing the vimrc files for mac and ubuntu. You can use the files to set up your vim easily.

To add all plugins, you first need to install the vim-plug.

> curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Then you can download the vimrc file in this repos. and put it in the howm directory.

> wget -O .vimrc https://raw.githubusercontent.com/JakeJing/vimconfig/master/vimrc_ubuntu

or

> curl -fLo .vimrc https://raw.githubusercontent.com/JakeJing/vimconfig/master/vimrc_mc

Next, install the plug-ins by opening any file with vim. To install the plug-ins, you simply need to type in the vim console:

> :PlugInstall
> q

If everything goes well, your vim will have a new look. Have fun!



