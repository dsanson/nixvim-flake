{
  plugins.snacks = {
    enable = true;
    settings = {
      bigfile.enable = true;
      image = {
        enable = true;
        resolve.__raw = ''
          function(path, src)
            local api = require "obsidian.api"
            if api.path_is_note(path) then
              return api.resolve_attachment_path(src)
            end
        end
        '';
      };
      quickfile.enable = true;
      scratch.enable = true;
    };
  };

  keymaps = [
    { key = "<leader>ts";
      action.__raw = "function() Snacks.scratch() end";
      mode = ["n"]; 
      options.desc = "Toggle scratch buffer"; 
    }
  ];

}
