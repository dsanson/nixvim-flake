{pkgs,...}:
{
  extraPlugins = with pkgs.vimPlugins; [
    (pkgs.vimUtils.buildVimPlugin {
     name = "neopywal";
     src = pkgs.fetchFromGitHub {
       owner = "RedsXDD";
       repo = "neopywal.nvim";
       rev = "95425eea6411eebc17c2fcdc46d1c45e57d99205";
       hash = "sha256-Ytkt4WngDA7zlTUomr/BcyW+B6uULWE9OHm5aQE+mOM=";
     };
     doCheck = false;  
    })
  ];

  opts.background = "dark"; # neopywal manages light and dark on its own
  colorscheme = "neopywal";

  extraConfigLua = ''
     require('neopywal').setup({
       notify = "warn";
     })
  '';

}
