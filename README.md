## Vim Configuration and Useful Tricks

### 1. vim configuration for mac and ubuntu

Here I am sharing my .vimrc files for mac and ubuntu. You can use this as a template to set up your vim.

To add all plugins, you first need to install the __vim-plug__.

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Then you can download the vimrc file in this repos. and put it in your home directory.

```bash
wget -O .vimrc https://raw.githubusercontent.com/JakeJing/vimconfig/master/vimrc_ubuntu
```

or

```bash
curl -fLo .vimrc https://raw.githubusercontent.com/JakeJing/vimconfig/master/vimrc_mac
```

Next, install the plug-ins by opening any file with vim. To install the plug-ins, you simply need to type the following command in the vim console:

```vim
:PlugInstall
:q
```

If everything goes well, your vim will have a new look !!

### 2. useful vim tricks

*(1) open multiple files in vim* 

One solution to manupulate several files is to open them in different tabs, and navigate betwen different tabs via `gt` or `gT`. The flag `-p` allows you to open multiple tab pages.

```bash
vim -p file1.txt file2.txt
```

 If you have already open a file, you can use `:tabedit file2.txt` to open another file in a separate tab.

*(2) save and reopen your session info*

If you always work with several panels in the same window, it would be better to save the current working files as a session via `mksession` command.

```vim
:mksession mysesion.vim
```

Resume your previously saved session/source file.

```bash
vim -S mysession.vim
```

*(3) open terminal mode in vim*

The new vim version support for a terminal mode, and you can initiate the terminal mode via `:ter`. To navigate between different windows, you can use the shortcuts (*ctrl + w*). In fish shell, you can directly close the terminal by typing `exit`. In other shell, you may need to type (*ctrl + \ + ctrl + n*) or remapped to (*Esc*), and followed by `:q`. 

*(4) check the folder structures (**netrw** plugin needed)*

You can easily open and close the current folder structure by the shortcut (ctrl + \\).

*(5) auto Tab completion*

In the insert mode, vim also supports for autofile completion. You can type the path of a file and complete the path by `Tab`.