# Personal dotfile collection on macbook

## Requirements

- [install iterm2](https://www.iterm2.com/)
- [install neovim](https://github.com/neovim/homebrew-neovim/blob/master/README.md)
- [install neovim python package](https://github.com/neovim/python-client)
- [install vim-plug](https://github.com/junegunn/vim-plug#neovim)
- [install git and bash-completion](https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion#homebrew)
- **install tmux:** `brew install tmux`
- **install and set powerline fonts:** clone [powerline/fonts](https://github.com/powerline/fonts) repository to arbitrary location, double-click the font file in Finder, then click `Install this font` in the preview window. I eventually installed the `Sauce Code Powerline Medium` font after several contrasts. Open iterm2 `preference --> profiles --> Text`, set `No-ASCII Font` to the powerline font just installed
- [install oceanic-next-iterm](https://github.com/mhartington/oceanic-next-iterm)

## configrations

- create symbolic link `/Users/<user>/.config/nvim/init.vim --> /Users/<user>/dotfiles/init.vim`
- create symbolic link `/Users/<user>/.bash_profile --> /Users/<user>/dotfiles/bash_profile`
- create symbolic link `/Users/<user>/.tmux.conf --> /Users/<user>/dotfiles/tmux.conf`
- open `nvim` and run `:PlugInstall`
- open `nvim` and run `:TmuxlineSnapshot ~/.tmuxline.conf` to generate tmuxline snapshot file which is sourced by tmux.conf on startup

## Note

- working environment specific configrations should be placed into `~/.bashrc`, configrations to be under version control can be placed into `~/.bash_profile`
- It's better to use absolute path to avoid `Too many levels of symbolic links` error when create symbolic links
