Dependencies:
- urxvt terminal emulator
- i3
- zsh
- oh-my-zsh
- antigen
- powerline zsh
- vim dein plugin manager

Install powerline compatible fonts:
Enable powerline fonts with rxvt-unicode and vim-airline

I recently switched to airline as powerline replacement for vim.

To enable support for powerline-fonts the following steps were needed:

    Download font from powerline-fonts repository repository and copy it to ~/.fonts/
    Update local font cache by running fc-cache -vf ~/.fonts
    Update ~/.Xdefaults to use the font for example: URxvt*font: xft:Terminess Powerline:size=12
    Update local X settings by running xrdb -merge ~/.Xdefaults
    Enable powerline fonts in your ~/.vimrc by adding let g:airline_powerline_fonts = 1


