{ config, pkgs, ... }:

{
  nixpkgs.overlays =
    let
      nix-matlab = import (
        builtins.fetchTarball "https://gitlab.com/doronbehar/nix-matlab/-/archive/master/nix-matlab-master.tar.gz"
      );
    in
    [
      nix-matlab.overlay
      (final: prev: {
        # Your own overlays...
      })
    ];
  environment.systemPackages = with pkgs; [
    # Other packages
    matlab
    # More packages
  ];
}
