{
  plugins.neo-tree = {
    enable = true;
    settings = {
      closeIfLastWindow = true;
      useDefaultMappings = true;
      window = {
        width = 30;
        position = "left";
      };
      sources = [
        "filesystem"
        "buffers"
        "git_status"
        "document_symbols"
      ];
    };
  };
  
  keymaps = [
    { key = "<leader>tt";
      action = "<cmd>Neotree document_symbols toggle<cr>";
      mode = ["n"]; 
      options.desc = "Table of Contents"; 
    }
    { key = "<leader>tf";
      action = "<cmd>Neotree filesystem toggle<cr>";
      mode = ["n"]; 
      options.desc = "Files panel"; 
    }
    { key = "<leader>tb";
      action = "<cmd>Neotree buffers toggle<cr>";
      mode = ["n"]; 
      options.desc = "Buffers panel"; 
    }
  ];
}
