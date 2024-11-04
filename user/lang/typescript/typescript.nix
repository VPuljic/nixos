{ pkgs, ... }:

{
  home.packages = with pkgs; [
      # typescript setup
        eslint_d
        prettierd
        nodePackages_latest.nodejs
        nodePackages_latest.typescript
        nodePackages_latest.typescript-language-server
        nodePackages_latest.prettier
        nodePackages_latest.eslint
  ];
}
