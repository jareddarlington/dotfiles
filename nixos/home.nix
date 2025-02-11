{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;

  home-manager.users.jared = {

    home = {
      username = "jared";
      homeDirectory = "/home/jared";
      stateVersion = "24.11"; # READ THIS BEFORE CHANGING : https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
    };

    imports = [ ./home/git.nix ];

  };
}
