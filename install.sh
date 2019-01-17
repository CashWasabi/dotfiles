# create a $DOTFILES path
$DOTFILES = $HOME/git/dotfiles/

# create a symlink
# ln -s /path/to/file /path/to/symlink
# create or update a symlink
# ln -sf /path/to/file /path/to/symlink

# NOTE: create backups of your files before you execute this!

# bashrc
ln -s $DOTFILES/bash/.bashrc $HOME/.bashrc

# i3
ln -s $DOTFILES/i3/config $HOME/.config/i3/config 

# vim
ln -s $DOTFILES/vim/.vimrc $HOME/.vimrc 
