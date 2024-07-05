{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages =
    [
        pkgs.bat
        pkgs.direnv
        pkgs.dust
        pkgs.eza
        pkgs.fd
        pkgs.fish
        pkgs.fzf
        pkgs.git
        pkgs.htop-vim
        pkgs.jq
        pkgs.lazygit
        pkgs.neovim
        pkgs.neomutt
        pkgs.nodejs_22
        pkgs.python3
        pkgs.ripgrep
        pkgs.rsync
        pkgs.shellcheck
        pkgs.speedtest-cli
        pkgs.starship
        pkgs.stow
        pkgs.tldr
        pkgs.tmux
        pkgs.tree
        pkgs.vim
        pkgs.wget
        pkgs.wireguard-go
    ];

  # Use a custom configuration.nix location.
  # $ darwin-rebuild switch -I darwin-config=$HOME/.config/nixpkgs/darwin/configuration.nix
  # environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  # nix.package = pkgs.nix;

  # Create /etc/zshrc that loads the nix-darwin environment.
  programs.zsh.enable = true;  # default shell on catalina
  # programs.fish.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;
}
