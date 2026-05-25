{ pkgs, ...}:

{
  plugins.telescope = {
    enable = true;
    extensions = {
      file-browser.enable = true;
      file-browser.settings.hijack_netrw = true;
      file-browser.settings.use_fd = true;

      fzf-native.enable = true;

      media-files.enable = true;

      ui-select.enable = true;

      undo.enable = true;
    };

    enabledExtensions = [
      "manix"
      "project"
      "zoxide"
    ];
  };

  extraPlugins = with pkgs.vimPlugins; [
    telescope-symbols-nvim
    telescope-project-nvim
    telescope-manix
    telescope-zoxide
  ];

  dependencies = {
    epub-thumbnailer.enable = true;
    ffmpegthumbnailer.enable = true;
    poppler-utils.enable = true;
  };

  keymaps = [
    { key = "<leader><leader>";
      action = "<cmd>Telescope commands<cr>";
      mode = ["n"]; 
      options.desc = "Run command"; 
    }
    { key = "<leader>ff";
      action = "<cmd>Telescope find_files hidden=true no_ignore=true<cr>";
      mode = ["n"]; 
      options.desc = "Find"; 
    }
    { key = "<leader>fg";
      action = "<cmd>Telescope live_grep<cr>";
      mode = ["n"]; 
      options.desc = "Grep"; 
    }
    { key = "<leader>fr";
      action = "<cmd>Telescope oldfiles<cr>";
      mode = ["n"]; 
      options.desc = "Recent"; 
    }
    { key = "<leader>fb";
      action = "<cmd>Telescope buffers<cr>";
      mode = ["n"]; 
      options.desc = "Buffers"; 
    }
    { key = "<leader>fz";
      action = "<cmd>Telescope zoxide list<cr>";
      mode = ["n"]; 
      options.desc = "Zoxide"; 
    }
    { key = "<leader>bb";
      action = "<cmd>Telescope buffers theme=dropdown<cr>";
      mode = ["n"]; 
      options.desc = "Buffers"; 
    }
    { key = "<leader>jm";
      action = "<cmd>Telescope marks<cr>";
      mode = ["n"]; 
      options.desc = "to mark"; 
    }
    { key = "<leader>jd";
      action = "<cmd>Telescope lsp_definitions<cr>";
      mode = ["n"]; 
      options.desc = "to definition"; 
    }
    { key = "<leader>jr";
      action = "<cmd>Telescope lsp_references<cr>";
      mode = ["n"]; 
      options.desc = "to reference"; 
    }
    # help mappings
    { key = "<leader>hm";
      action = "<cmd>Telescope man_pages<cr>";
      mode = ["n"]; 
      options.desc = "open man page"; 
    }
    { key = "<leader>hh";
      action = "<cmd>Telescope help_tags<cr>";
      mode = ["n"]; 
      options.desc = "search help tags"; 
    }
    # insert symbols
    { key = "<leader>is";
      action = "<cmd>Telescope symbols<cr>";
      mode = ["n"]; 
      options.desc = "symbol"; 
    }
  ];

}

