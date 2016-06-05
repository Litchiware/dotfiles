# Personal dotfile collection on ubuntu server

## Requirements

- [install neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu)
- [install neovim python package](https://github.com/neovim/python-client)
- [install vim-plug](https://github.com/junegunn/vim-plug#neovim)
- **install tmux:** `sudo apt-get install tmux`
- **install jedi:** `sudo pip install jedi`
- [install pylint](https://www.pylint.org/#install)

## configrations

- create symbolic link `/home/<user>/.config/nvim/init.vim --> /home/<user>/dotfiles/init.vim`
- create symbolic link `/home/<user>/.bash_profile --> /home/<user>/dotfiles/bash_profile`
- create symbolic link `/home/<user>/.tmux.conf --> /home/<user>/dotfiles/tmux.conf`
- open `nvim` and run `:PlugInstall`
- open `nvim` and run `:TmuxlineSnapshot ~/.tmuxline.conf` to generate tmuxline snapshot file which is sourced by tmux.conf on startup

## Note

- working environment specific configrations should be placed into `~/.profile_extension`, configrations to be under version control can be placed into `~/.bash_profile`
- It's better to use absolute path to avoid `Too many levels of symbolic links` error when create symbolic links
