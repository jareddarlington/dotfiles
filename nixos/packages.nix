{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    alacritty
    firefox
    ghostty
    vscode
    discord
    fastfetch
    git
    discord
    nixfmt-rfc-style # Nix language formatter
  ];
}
