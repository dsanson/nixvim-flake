{
  plugins.render-markdown = {
    enable = true;
  };

  extraConfigLua = ''
    require('render-markdown').setup({
      file_types = { 'markdown', 'pandoc', 'carnap' },
      render_modes = true,
      anti_conceal = {
        above = 2,
        below = 2,
      },
      bullet = {
      icons = { '⁃', '•', '⁃', '•' },
      },
      html = {
        comment = {
          conceal = false,
        },
      },
    })
  '';
}


