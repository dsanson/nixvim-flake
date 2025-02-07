{
  plugins.render-markdown = {
    enable = true;
  };

  extraConfigLua = ''
    require('render-markdown').setup({
      render_modes = true,
      anti_conceal = {
        above = 2,
        below = 2,
      },
    })
  '';
}

