{pkgs,...}:
{
  extraPlugins = with pkgs.vimPlugins; [
    img-clip-nvim
  ];
}
