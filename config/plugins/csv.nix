{ pkgs, ... }:

{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
     name = "csvview";
     src = pkgs.fetchFromGitHub {
       owner = "hat0uma";
       repo = "csvview.nvim";
       rev = "ba1d6204a3303555377bc389cbd1c35420c28220";
       hash = "sha256-D2qguDNEyuUP1eA75Ic+s5JiSYXyLRb3ic60a9CgaW4=";
     };
    })
  ];

  extraConfigLua = ''
    require('csvview').setup(
      {
        view = {
          --- minimum width of a column
          min_column_width = 3,
          --- spacing between columns
          spacing = 1,
          display_mode = "border",
        },

      }
    )
  ''; 

  extraFiles = {
    "after/ftplugin/csv.lua".text = ''
        require('csvview').enable()
    '';
  };
}
