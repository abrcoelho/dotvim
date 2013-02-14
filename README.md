Wanna know how to do this? Check it out [http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/](1)

Installation:

    git clone git://github.com/abrcoelho/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

      cd ~/.vim
      git submodule init
      git submodule update

[1]: http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
