# nix/modules/home-manager.nix — auto-generated from jiff.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.jiff; in {
  options.programs.jiff = {
    enable = lib.mkEnableOption "jiff";
    package = lib.mkOption { type = lib.types.package; default = pkgs.jiff or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
