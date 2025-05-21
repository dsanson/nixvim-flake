{
  plugins.zen-mode = {
    enable = true;
    settings.window.options = {
      signcolumn = "no";
      number = false;
    };
  };

  keymaps = [
    { key = "<leader>tz";
      action = "<cmd>ZenMode<cr>";
      mode = ["n"]; 
      options.desc = "Zen mode"; 
    }
  ];
}

