{
  plugins.trouble = {
    enable = true;
  };

  keymaps = [
    { key = "<leader>tt";
      action = "<cmd>Trouble symbols toggle win.position=right<cr>";
      mode = ["n"]; 
      options.desc = "Table of Contents"; 
    }
    { key = "<leader>td";
      action = "<cmd>Trouble diagnostics toggle win.position=right focus=false<cr>";
      mode = ["n"]; 
      options.desc = "Diagnostics panel"; 
    }
    { key = "<leader>tl";
      action = "<cmd>Trouble lsp toggle win.position=right focus=false<cr>";
      mode = ["n"]; 
      options.desc = "LSP panel"; 
    }
    { key = "<leader>tq";
      action = "<cmd>Trouble quickfix toggle win.position=right focus=false<cr>";
      mode = ["n"]; 
      options.desc = "Quickfix panel"; 
    }
  ];

}

# {
#     "folke/trouble.nvim",
#     keys = {
#       {
#         "<leader>xx",
#         "<cmd>Trouble diagnostics toggle<cr>",
#         desc = "Diagnostics (Trouble)",
#       },
#       {
#         "<leader>xX",
#         "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
#         desc = "Buffer Diagnostics (Trouble)",
#       },
#       {
#         "<leader>cs",
#         "<cmd>Trouble symbols toggle focus=false<cr>",
#         desc = "Symbols (Trouble)",
#       },
#       {
#         "<leader>cl",
#         "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
#         desc = "LSP Definitions / references / ... (Trouble)",
#       },
#       {
#         "<leader>xL",
#         "<cmd>Trouble loclist toggle<cr>",
#         desc = "Location List (Trouble)",
#       },
#       {
#         "<leader>xQ",
#         "<cmd>Trouble qflist toggle<cr>",
#         desc = "Quickfix List (Trouble)",
#       },
#     },
#     opts = {}, -- for default options, refer to the configuration section for custom setup.
#   }
