{pkgs,...}:
{
  extraPlugins = with pkgs.vimPlugins; [
    (pkgs.vimUtils.buildVimPlugin {
     name = "neopywal";
     src = pkgs.fetchFromGitHub {
       owner = "RedsXDD";
       repo = "neopywal.nvim";
       rev = "09188d79b45694141ec779d05cbcc75f994639d1";
       hash = "sha256-RLwxyGRmU1B8r6xO1YObF8qlNEj7qitNUArUlw092V8=";
     };
     doCheck = false;  
    })
  ];

  opts.background = "dark"; # neopywal manages light and dark on its own
  colorscheme = "neopywal";


}
