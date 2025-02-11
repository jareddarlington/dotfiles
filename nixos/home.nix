{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;

  home-manager.users.jared = {

    # TODO: not sure how I'm supposed to connect the home.nix and configuration.nix files or how to import git in git.nix
    home = {
      username = "jared";
      homeDirectory = "/home/jared";
      stateVersion = "24.11"; # READ THIS BEFORE CHANGING : https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
      # packages = with pkgs; [
      #   git
      # ];
    };

    imports = [ ./home/git.nix ];

  };
}
