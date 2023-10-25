# Dotfiles

This is my collection of [configuration files][dotfiles]

## Usage

1. Install [Scoop][scoop]

```shell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex
```

2. Install fd/gcc/nodejs/ripgrep

```shell
scoop install main/fd
scoop install main/gcc
scoop install main/nodejs
scoop install main/ripgrep
```

3. Install nerd fonts

```shell
scoop bucket add nerd-fonts
scoop install nerd-fonts/JetBrainsMono-NF
```

4. Clone this repo

```shell
git clone https://github.com/jgomez360/.dotfiles.git
```

5. Install Wezterm

```
scoop bucket add extras
scoop install extras/wezterm
```

Copy Wezterm config from repo

```
mkdir ~\.config\wezterm
cp ~\.dotfiles\wezterm\.config\wezterm\.wezterm.lua ~\.config\wezterm\.wezterm.lua
```

6. Install Starship

```
scoop bucket add starship
```

Add to end of PowerShell config ($PROFILE)

```
Invoke-Expression (&starship init powershell)
```

Copy Starship config from repo

```
cp ~\.dotfiles\starship\.config\starship.toml ~\.config\
```

7. Install NeoVim

```
scoop install neovim
```

Copy NeoVim config from repo

```
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
[dotfiles]: http://dotfiles.github.io/
[scoop]: https://scoop.sh
