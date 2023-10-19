if OS.mac?
    # taps
    tap "homebrew/cask-fonts"
    tap "koekeishiya/formulae"
    tap "achannarasappa/tap"

    brew "noti" # utility to display notifications from scripts
    brew "trash" # rm, but put in the trash rather than completely delete

    # Applications
    cask "alacritty"

    # yabai
    brew "yabai"
    brew "skhd"

    # Fonts
    cask "font-jetbrains-mono-nerd-font"
elsif OS.linux?
    brew "xclip" # access to clipboard (similar to pbcopy/pbpaste)
end

tap "homebrew/bundle"
tap "homebrew/core"

# packages
brew "bat" # cat with syntax highlighting
brew "cointop" # TUI for crypto
brew "direnv" # env variables based on $PWD
brew "exa" # ls alternative
brew "fd" # find alternative
brew "fzf" # Fuzzy file searcher, used in scripts and in vim
brew "git" # Git version control (latest version)
brew "glow" # markdown viewer
brew "htop" # a top alternative
brew "jq" # work with JSON files in shell scripts
brew "lynx" # text-based web browser to render html in neomutt
brew "neomutt" # terminal mail client
brew "neovim", args: ["HEAD"] # A better vim
brew "node" # node (latest)
brew "nushell" # modern shell
brew "python" # python (latest)
brew "ripgrep" # very fast file searcher
brew "rsync" # incremental file transfers
brew "shellcheck" # diagnostics for shell sripts
brew "starship" # cross-shell prompt
brew "stow" # link config files
brew "ticker" # stock ticker
brew "tldr" # simplified man pages
brew "tmux" # terminal multiplexer
brew "tree" # pretty-print directory contents
brew "vim" # Vim (latest)
brew "wget" # internet file retriever
