{
  plugins.twilight = {
    enable = false;
  };
  keymaps = [
    { key = "<leader>td";
      action = "<cmd>Twilight<cr>";
      mode = ["n"]; 
      options.desc = "Twilight"; 
    }
  ];
}


