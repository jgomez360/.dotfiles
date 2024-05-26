# Dotfiles

This is my collection of [configuration files](http://dotfiles.github.io/).

## Usage

Pull the repository, and then setup configs in Windows and WSL.

```shell
$ git clone https://github.com/jgomez360/.dotfiles.git
```

## Dependencies

- [Debian][debian] installed via WSL.

```shell
wsl --install -d debian
```

- [Scoop][scoop] installed via Powershell.

```shell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

Install nerd fonts

```shell
scoop bucket add nerd-fonts
scoop install nerd-fonts/JetBrainsMono-NF
```

- Install [Alacritty][alacritty] with Windows installer and copy configuration.

```shell
mkdir -p ~/AppData/Roaming/alacritty
cp -R ./.dotfiles/alacritty/.config/alacritty/* ./AppData/Roaming/alacritty/
```

## Setup WSL

Install dependencies

```shell
sudo apt install build-essential curl gcc git
```

Clone repository into WSL.

```shell
git clone https://github.com/jgomez360/.dotfiles.git
cd .dotfiles
git checkout windows
```

Install packages view homebrew.

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

# Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm.git)

Create the symbolic links for configurations using [GNU stow][stow].

```shell
stow fish neovim starship tmux
```

Install [Tmux Plugin Manager][tpm] and plugins. After clone, enter tmux and type Ctrl+b + I

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

Setup environment for NeoVim.

```shell
npm install -g neovim
python3 -m venv ~/envs/neovim
source ~/envs/neovim/bin/activate.fish
python3 -m pip install pynvim
deactivate
```

The [language server configuration][lsp] requires the relevant servers to be
installed:

- Prettierd and prettier-plugin-solidity for Solidity formatting.

```shell
npm install -g @fsouza/prettierd prettier-plugin-solidity
```

[alacritty]: https://alacritty.org/
[debian]: https://www.debian.org/
