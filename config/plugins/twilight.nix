{
  plugins.twilight = {
    enable = true;
  };
  keymaps = [
    { key = "<leader>td";
      action = "<cmd>Twilight<cr>";
      mode = ["n"]; 
      options.desc = "Twilight"; 
    }
  ];
}


