Installation:

    git clone git://github.com/ScottDWebster/dotvim.git ~/.vim

Create symlinks:

#   On Windows:

    cd %HOMEPATH%
    mklink /D vimfiles .vimrc   # create a directory link to .vim call vimfiles
    
#   On Linux/Unix (not necessary as vim checks for ~/.vimrc and then ~/.vim/vimrc) 
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

To update from GitHub:

    git pull origin master
    
To push changes to GitHub:

    git push
