# Dotfiles

This is my collection of [configuration files](http://dotfiles.github.io/).

## Usage

Pull the repository, and then create the symbolic links [using GNU
stow][stow].

```shell
$ git clone git@github.com:jgomez360/.dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ stow neovim # plus whatever else you'd like
```

## Dependencies

### [Homebrew][homebrew] to install packages.

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then in this repo run:

```shell
brew bundle install
```

### [Nix][nix] and [Nix Darwin][nix-darwin] to install packages.

```shell
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

```shell
cd ~/.dotfiles/nix-darwin
sed -i '' "s/simple/$(scutil --get LocalHostName)/" flake.nix
cp -R ~/.dotfiles/nix-darwin ~/.config/
```

## Setup

Build nix-darwin config

```shell
cd ~.config/nix-darwin
nix run nix-darwin -- switch --flake .
```

To rebuild nix-darwin config

```shell
cd ~.config/nix-darwin
darwin-rebuild switch --flake .
```

Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm.git)

```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Setup fish as default shell

```shell
fish
fish_add_path /home/linuxbrew/.linuxbrew/bin
echo "/home/linuxbrew/.linuxbrew/bin/fish" | sudo tee -a /etc/shells
chsh -s /home/linuxbrew/.linuxbrew/bin/fish
```

Create virtual Python environment just for NeoVim.

```shell
python -m venv ~/envs/neovim
source ~/envs/neovim/bin/activate.fish
python -m pip install pynvim
deactivate
```

The [language server configuration][lsp] requires the relevant servers to be
installed:

- Prettierd and prettier-plugin-solidity for Solidity formatting.

```shell
npm install -g @fsouza/prettierd prettier-plugin-solidity
```

[nix]: https://github.com/DeterminateSystems/nix-installer
[nix-darwin]: https://github.com/LnL7/nix-darwin
[neovim]: https://neovim.io/
[homebrew]: https://brew.sh
[lsp]: https://github.com/neovim/nvim-lspconfig
[stow]: https://alexpearce.me/2016/02/managing-dotfiles-with-stow/
