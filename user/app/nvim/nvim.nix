{ config, pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    neovim
    neovim-remote
    neovide
    lua
    lua53Packages.luarocks
    lua-language-server
    luajitPackages.luarocks-nix
    vscode-langservers-extracted
    nil
    clang-tools
    marksman
    python311Packages.python-lsp-server
    java-language-server
    dockerfile-language-server-nodejs
    docker-compose-language-service
    kotlin-language-server
    bash-language-server
    yaml-language-server
    sqls
    nmap
  ];
  programs.neovim = {
    viAlias = true;
    vimAlias = true;
  };
  home.file.".config/nvim".source = ./.;
  home.file.".config/nvim".recursive = true;
  home.file.".config/nvim/lua/themes/stylix.lua".source = config.lib.stylix.colors {
      template = builtins.readFile ./lua/themes/stylix.lua.mustache;
      extension = ".lua";
  };
}
