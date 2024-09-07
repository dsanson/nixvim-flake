{
  plugins.auto-save = {
    enable = true;
  };

  extraConfigLua = ''
    require('auto-save').setup( {execution_message = {enabled = false } } )
  '';

}
