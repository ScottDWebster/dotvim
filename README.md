Installation:

    (Use git bash on Windows)
    git clone https://github.com/ScottDWebster/dotvim.git ~/.vim

Create symlinks:

    On Windows:

        cd %HOMEPATH%
        mklink /D vimfiles .vim   # create a directory link to .vim called vimfiles

    On Linux/Unix (not necessary as vim checks first for ~/.vimrc and then ~/.vim/vimrc)
    
        ln -s ~/.vim/vimrc ~/.vimrc
        ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

Install plugins via Vundle

	Start `vim` and run `:PluginInstall`

To update from GitHub:

    git pull origin master
    
To push changes to GitHub:

    git push
