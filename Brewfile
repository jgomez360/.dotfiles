if OS.mac?
    # taps
    tap "homebrew/cask"
    tap "homebrew/cask-fonts"
    tap "koekeishiya/formulae"

    brew "noti" # utility to display notifications from scripts
    brew "trash" # rm, but put in the trash rather than completely delete

    # Applications
    cask "alacritty"

    # yabai
    brew "yabai"
    brew "skhd"

    # Fonts
    cask "font-jetbrains-mono"
    cask "font-meslo-lg-nerd-font"
elsif OS.linux?
    brew "xclip" # access to clipboard (similar to pbcopy/pbpaste)
end

tap "homebrew/bundle"
tap "homebrew/core"

# packages
brew "direnv"
brew "exa" # ls alternative
brew "fd" # find alternative
brew "fzf" # Fuzzy file searcher, used in scripts and in vim
brew "git" # Git version control (latest version)
brew "glow" # markdown viewer
brew "htop" # a top alternative
brew "jq" # work with JSON files in shell scripts
brew "neovim", args: ["HEAD"] # A better vim
brew "nushell"
brew "python" # python (latest)
brew "ripgrep" # very fast file searcher
brew "rsync"
brew "shellcheck" # diagnostics for shell sripts
brew "starship"
brew "stow"
brew "tldr"
brew "tmux" # terminal multiplexer
brew "tree" # pretty-print directory contents
brew "vim" # Vim (latest)
brew "wget" # internet file retriever
