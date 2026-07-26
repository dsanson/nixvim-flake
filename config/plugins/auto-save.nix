{
  plugins.auto-save = {
    enable = true;
    settings = {
      condition = ''
        function(buf)
          local fn = vim.fn
          local utils = require("auto-save.utils.data")
        
          if utils.not_in(fn.getbufvar(buf, "&filetype"), {'oil'}) then
            return true
          end
          return false
        end
      '';
      debounce_delay = 3000;
    };
  };
}
