# Common Configurations for my NixOS systems.

{ pkgs, lib, config, options, ... }:

{
  # imports = [];

  options.mplaneta = {
    username = lib.mkOption {
      # users = lib.mkOption {
      # type = lib.types.listOf lib.types.str;
      type = lib.types.str;
      description = "User for that all enabled configurations apply";
      default = "mplaneta";
    };
    # This is necessary as "config.system.stateVersion" isn't available for
    # evaluation in NixOS.
    stateVersion = lib.mkOption {
      type = lib.types.str;
      description = "State version of the host NixOS system.";
      example = "22.11";
    };
  };
}
