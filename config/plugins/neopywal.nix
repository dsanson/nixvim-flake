{pkgs,...}:
{
  extraPlugins = with pkgs.vimPlugins; [
    (pkgs.vimUtils.buildVimPlugin {
     name = "neopywal";
     src = pkgs.fetchFromGitHub {
       owner = "dsanson";
       repo = "neopywal.nvim";
       rev = "d394d113d1448e0c1310995bb43e3bf26acd82d3";
       hash = "sha256-8vA1lliDXy/GeEUTv6O4BcVXDsV7SBeVySkkAHcO3iA=";
     };
     doCheck = false;  
    })
  ];

  opts.background = "dark"; # neopywal manages light and dark on its own
  colorscheme = "neopywal";

}
