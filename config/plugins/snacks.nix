{
  plugins.snacks = {
    enable = true;
    settings = {
      bigfile.enable = true;
      image.enable = true;
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
