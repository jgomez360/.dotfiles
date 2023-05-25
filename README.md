# Dotfiles

This is my collection of [configuration files](http://dotfiles.github.io/).

## Usage

Pull the repository, and then create the symbolic links [using GNU
stow](https://alexpearce.me/2016/02/managing-dotfiles-with-stow/).

```shell
$ git clone git@github.com:jgomez360/.dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ stow neovim # plus whatever else you'd like
```

## Dependencies

* [NeoVim][neovim] for improved Vim editing.
* [NerdFonts][nerdfonts] for iconic font support in NeoVim.
* [ripgrep][ripgrep] for file searching.
* [NvChad][nvchad] for a solid default NeoVim config.

I install [Conda][conda], specifically [Miniconda][miniconda], to manage
Python environments. 

The [language server configuration][lsp] requires the relevant servers to be
installed:

```shell
# Python
$ npm install -g pyright
# Rust
$ brew install rust-analyzer
# Solidity
$ npm install -g solc
$ npm install -g prettier prettier-plugin-solidity
$ npm install -g @ignored/solidity-language-server
```

[neovim]: https://neovim.io/
[conda]: https://conda.io/
[miniconda]: https://docs.conda.io/en/latest/miniconda.html
[nerdfonts]: https://www.nerdfonts.com/
[nvchad]: https://nvchad.com/docs/quickstart/install
[ripgrep]: https://github.com/BurntSushi/ripgrep
[lsp]: https://github.com/neovim/nvim-lspconfig

