{ pkgs, ... }:

{
  extraPlugins = [ pkgs.vimPlugins.vim-easy-align ];

  keymaps = [
    {
      action = "<Plug>(EasyAlign)";
      key = "<Enter>";
      options = {
        desc = "Easy align";
      };
      mode = [ "v" "n" ];
    }
  ];
}

