vim
===

vim config
refer: http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

Install

1) git Clone
git clone https://github.com/kanalfred/vim.git

2) Create symbolic links so that ~/.vimrc points to the ~/.vim/vimrc file:
ln -s ~/.vim/vimrc ~/.vimrc

3) Init Submodule
cd ~/.vim
git submodule init
git submodule update
