vim
===

vim config
refer: http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

Install

1) git Clone <br/>
git clone https://github.com/kanalfred/vim.git

2) mv .vim vim.bak
3) mv vim .vim

4) Create symbolic links so that ~/.vimrc points to the ~/.vim/vimrc file: <br/>  
ln -s ~/.vim/vimrc ~/.vimrc

5) Init Submodule <br/>
cd ~/.vim <br/>
git submodule init <br/>
git submodule update <br/>


Git Submodule
----------------

Rmove submodule<br/>
git submodule add https://github.com/kanalfred/vim.git bundle/vim-surround <br/>

Add submodule <br/>
git rm -r --cached bundle/vim-surround <br/>


Better Ctags
-------------

ln -s ~/.vim/ctags-better ~/ctags-better <br/>
ln -s ~/.vim/update-better-ctags.sh ~/update-better-ctags.sh <br/>

mycli - mysql client autocomplete
-------------
url: https://github.com/dbcli/mycli <br/> 

Ubuntu <br/> 
sudo apt-get install mycli <br/> 

Centos 6 <br/> 
sudo yum install python-pip <br/> 
easy_install mycli <br/> 

Tmux Plugin
-------------
tmux-resurrect
https://github.com/tmux-plugins/tmux-resurrect
