# nix/modules/nixos.nix — auto-generated from jiff.caixa.lisp
# description: ""
{ config, lib, pkgs, ... }:
let
  cfg = config.services.jiff;
in {
  options.services.jiff = {
    enable = lib.mkEnableOption "jiff";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.jiff or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
