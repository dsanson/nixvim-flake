{pkgs,...}:
{
  extraPlugins = with pkgs.vimPlugins; [
    boole-nvim
  ];

  extraConfigLua = ''
    require('boole').setup({
      mappings = {
        increment = '<C-a>',
        decrement = '<C-x>'
      },
    })
  '';

}
