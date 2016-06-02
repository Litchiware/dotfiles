# Personal dotfile collection on macbook

## neovim

### Requirements

- [install neovim](https://github.com/neovim/homebrew-neovim/blob/master/README.md)
- [install neovim python package](https://github.com/neovim/python-client)
- [install vim-plug](https://github.com/junegunn/vim-plug#neovim)
- **install patched powerline fonts: **clone [powerline/fonts](https://github.com/powerline/fonts) repository to arbitrary location, double-click the font file in Finder, then click **Install this font** in the preview window. I eventually installed the **Sauce Code Powerline Medium** font after several contrast
- **set No-ASCII Font in iIerm2 preference: **open iTerm2 preference --> profiles --> Text, set No-ASCII Font to the powerline font we just installed

### Setup

create symbolic link to this `init.vim`

```
$ ln -s /Users/liliangmin/dotfiles/init.vim /Users/liliangmin/.config/nvim/init.vim
```

open `neovim` and run `:PlugInstall`
