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

* [Homebrew][neovim] to install packages.
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Then in this repo run:
```shell
brew bundle install
```
On Linux, install `trash` command:
```shell
npm install -g trash-cli
```

I install [Conda][conda], specifically [Miniconda][miniconda], to manage
Node and Python environments. 

```shell
conda create -n neovim -c conda-forge nodejs=18
conda activate neovim
npm install -g neovim
conda install python=3.11
python3 -m pip install --user --upgrade pynvim
conda deactivate
```

The [language server configuration][lsp] requires the relevant servers to be
installed:

* Prettier and prettier-plugin-solidity for Solidity formatting.
```shell
conda activate neovim
npm install -g @fsouza/prettierd prettier-plugin-solidity
conda deactivate
```

[neovim]: https://neovim.io/
[homebrew]: https://brew.sh
[conda]: https://conda.io/
[miniconda]: https://docs.conda.io/en/latest/miniconda.html
[lsp]: https://github.com/neovim/nvim-lspconfig
[stow]: https://alexpearce.me/2016/02/managing-dotfiles-with-stow/
