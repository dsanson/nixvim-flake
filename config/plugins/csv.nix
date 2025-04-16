{ pkgs, ... }:

{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
     name = "csvview";
     src = pkgs.fetchFromGitHub {
       owner = "hat0uma";
       repo = "csvview.nvim";
       rev = "9cc5dcb060c96517d8c34b74e5b81d58529b3ea2";
       hash = "sha256-0jiPBmUQ3/irNUiZw3s9awlEH+p+oWy5fyyUP3yCrd4=";
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
