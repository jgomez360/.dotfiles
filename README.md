# Dotfiles

This is my collection of [configuration files](http://dotfiles.github.io/).

## Usage

1. Install [Scoop](https://scoop.sh) and dependencies

```shell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex

# Install fd/gcc/nodejs/ripgrep
scoop install main/fd
scoop install main/gcc
scoop install main/nodejs
scoop install main/ripgrep

# Install nerd fonts
scoop bucket add nerd-fonts
scoop install nerd-fonts/JetBrainsMono-NF
```

2. Clone .dotfiles [repo](https://github.com/jgomez360/.dotfiles.git)

```shell
git clone https://github.com/jgomez360/.dotfiles.git
```

3. Install Alacritty

```
scoop bucket add extras
scoop bucket add extras/alacritty

# Copy config from repo
mkdir ~AppData\Roaming\alacritty
cp -r ~\.dotfiles\alacritty\.config\alacritty\ ~\AppData\Roaming\alacritty\
```

4. Install Starship

```
scoop bucket add starship

# Add to end of PowerShell config ($PROFILE)
Invoke-Expression (&starship init powershell)

# Copy config from repo
cp ~\.dotfiles\starship\.config\starship.toml ~\.config\
```

5. Install NeoVim

```
# Install neovim
scoop install neovim

# Copy config from repo
cp -r ~\.dotfiles\neovim\.config\nvim ~\AppData\Local\
```

## Dependencies

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

[neovim]: https://neovim.io/
[homebrew]: https://brew.sh
[lsp]: https://github.com/neovim/nvim-lspconfig
[stow]: https://alexpearce.me/2016/02/managing-dotfiles-with-stow/
