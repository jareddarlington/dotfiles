{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    # package = pkgs.git;
    userName = "Jared Darlington";
    userEmail = "darlingtonjwd@gmail.com";

    extraConfig = {
      init.defaultBranch = "main";
    };
  };

  # home.packages = with pkgs; [
  #   git
  # ];
}
