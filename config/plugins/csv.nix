{pkgs,...}:
{
  plugins.csvview = {
    enable = true;
  };
  extraPlugins = with pkgs.vimPlugins; [
    csv-vim
  ];
}
