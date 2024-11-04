{ config, pkgs, ... }:

{
  imports = [ ./pipewire.nix
              ./dbus.nix
              ./gnome-keyring.nix
              ./fonts.nix
            ];

  environment.systemPackages = with pkgs;
    [ wayland waydroid
      (sddm-chili-theme.override {
        themeConfig = {
          background = config.stylix.image;
          ScreenWidth = 3840;
          ScreenHeight = 2160;
          blur = true;
          recursiveBlurLoops = 3;
          recursiveBlurRadius = 5;
        };})
    ];

  # Configure xwayland
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us";
      variant = "";
      options = "caps:escape";
    };
  };
}
