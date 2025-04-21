{pkgs,...}:
{
  extraPlugins = with pkgs.vimPlugins; [
    csv-vim
  ];
}
