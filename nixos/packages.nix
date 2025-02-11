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
    git # TODO: remove once home-manager is setup
    discord
    nixfmt-rfc-style # Nix language formatter
  ];
}
