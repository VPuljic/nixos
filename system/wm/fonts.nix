{ pkgs-stable, ... }:

{
  # Fonts are nice to have
  fonts.packages = with pkgs-stable; [
    # Fonts
    awesome
    cascadia-code
    meslo-lgs-nf
    nerdfonts
    powerline
    fira-code
  ];

}
