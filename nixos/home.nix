{ config, pkgs, ... }:

{
  # imports = [ /home/jared/dotfiles/home/git.nix ];

  programs.home-manager.enable = true;

  # home.username = "jared";
  # home.homeDirectory = "/home/jared";
  # home.stateVersion = "24.11"; # READ THIS BEFORE CHANGING : https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion

  home = {
    username = "jared";
    homeDirectory = "/home/jared";
  };

  home.stateVersion = "24.11"; # READ THIS BEFORE CHANGING : https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
}
