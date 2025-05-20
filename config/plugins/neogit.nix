{
  plugins.neogit = {
    enable = true;
    settings = {
      graph_style = "unicode";
      integrations = {
        fzf-lua = false;
        telecope = true;
      };
    };
  };
  keymaps = [
    { key = "<leader>gc"; action = "<cmd>Neogit commit<cr>"; mode = ["n"]; options.desc = "Neogit commit"; }
    { key = "<leader>gg"; action = "<cmd>Neogit<cr>"; mode = ["n"]; options.desc = "Neogit"; }
  ];
}
