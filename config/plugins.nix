{ pkgs, ...}:
{

  imports = [ 
    ./plugins/treesitter.nix
    ./plugins/treesitter-context.nix
    ./plugins/cmp.nix
    ./plugins/which-key.nix
    ./plugins/trouble.nix

    ./plugins/auto-save.nix
    ./plugins/lastplace.nix
    ./plugins/auto-session.nix
    ./plugins/oil.nix
    ./plugins/rainbow-delimiters.nix
    ./plugins/otter.nix
    ./plugins/todo-comments.nix
    ./plugins/csv.nix
    ./plugins/pandoc.nix
    ./plugins/render-markdown.nix
    ./plugins/quarto.nix
    ./plugins/obsidian.nix
    ./plugins/snacks.nix
    
    ./plugins/mini.nix
    # replace with mini?
    ./plugins/easy-align.nix

    # replace with snacks?
    ./plugins/zen-mode.nix
    ./plugins/diagram.nix
    ./plugins/neogit.nix
    ./plugins/git-conflict.nix
    ./plugins/gitsigns.nix
    ./plugins/telescope.nix

    ./plugins/vim-speeddating.nix
    ./plugins/utl-vim.nix
    ./plugins/boole-nvim.nix
    ./plugins/img-clip-nvim.nix
    ./plugins/neopywal.nix
    ./plugins/apple-music.nix
    ./plugins/vim-scimark.nix

  ];

  extraPackages = with pkgs; [
    manix # should just install this globally (what uses this? Telescope?)
  ];

}

# Not available as nixvim plugins and haven't bothered to install manually yet
#   {
#     'cameron-wags/rainbow_csv.nvim',
#     config = true,
#     ft = {
#         'csv',
#         'tsv',
#         'csv_semicolon',
#         'csv_whitespace',
#         'csv_pipe',
#         'rfc_csv',
#         'rfc_semicolon'
#     },
#     cmd = {
#         'RainbowDelim',
#         'RainbowDelimSimple',
#         'RainbowDelimQuoted',
#         'RainbowMultiDelim'
#     }
#   },
