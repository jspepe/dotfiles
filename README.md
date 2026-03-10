# I made my first dotfiles
I want to switch over to wsl2 so im pushing my dotfiles from my arch laptop for neovim and tmux
## Install Dotfiles
Clone the repository:

```bash
git clone https://github.com/jspepe/dotfiles
cd dotfiles
```

Apply the configurations with GNU Stow:

stow nvim tmux

This creates symlinks:

~/.config/nvim
~/.tmux.conf

pointing to the files in this repository.
