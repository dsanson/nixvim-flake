{pkgs,...}:
{
  extraPlugins = with pkgs.vimPlugins; [
    utl-vim
  ];
}
