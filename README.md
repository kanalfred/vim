vim
===

vim config
refer: http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

Install

1) git Clone <br/>
git clone https://github.com/kanalfred/vim.git

2) Create symbolic links so that ~/.vimrc points to the ~/.vim/vimrc file: <br/>  
ln -s ~/.vim/vimrc ~/.vimrc

3) Init Submodule <br/>
cd ~/.vim <br/>
git submodule init <br/>
git submodule update <br/>


Git Submodule
----------------

Rmove submodule<br/>
git submodule add https://github.com/kanalfred/vim.git bundle/vim-surround <br/>

Add submodule <br/>
git rm -r --cached bundle/vim-surround <br/>
