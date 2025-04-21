{pkgs,...}:
{
  extraPlugins = with pkgs.vimPlugins; [
    vim-speeddating
  ];
}
