{ pkgs, ...}:
{
  # Import all your configuration modules here
  
  imports = [ 
    ./options.nix
    ./abbreviations.nix
    ./digraphs.nix
    ./mappings.nix
    ./plugins.nix
  ];

  extraPackages = with pkgs; [
    manix # should just install this globally
  ];

  performance.byteCompileLua.enable = true;

}

