{ pkgs, ...}:
{

  imports = [ 
    ./plugins/treesitter.nix
    ./plugins/treesitter-context.nix
    ./plugins/cmp.nix
    ./plugins/lsp.nix
    ./plugins/which-key.nix
    ./plugins/trouble.nix

    ./plugins/auto-save.nix
    ./plugins/lastplace.nix
    ./plugins/auto-session.nix
    ./plugins/oil.nix
    ./plugins/rainbow-delimiters.nix
    ./plugins/otter.nix
    ./plugins/todo-comments.nix
    ./plugins/neo-tree.nix
    ./plugins/csv.nix
    ./plugins/pandoc.nix
    ./plugins/render-markdown.nix
    ./plugins/quarto.nix
    ./plugins/markdown-oxide.nix
    ./plugins/obsidian.nix
    ./plugins/snacks.nix
    
    ./plugins/mini.nix
    # replace with mini?
    ./plugins/surround.nix
    ./plugins/easy-align.nix
    ./plugins/commentary.nix

    # replace with snacks?
    ./plugins/zen-mode.nix
    ./plugins/twilight.nix
    ./plugins/image.nix
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

  ];

  # extraPlugins =  [
  #   (pkgs.vimUtils.buildVimPlugin {
  #    name = "apple-music";
  #    src = pkgs.fetchFromGitHub {
  #      owner = "p5quared";
  #      repo = "apple-music.nvim";
  #      rev = "164f8614f659dd2fb1c95010d951f7178e24c1de";
  #      hash = "sha256-dXQvT/flGYtyOpzZrcJI2BuXZZiaby2K/t8RDaoop7g=";
  #    };
  #    doCheck = false;  
  #   })
  # ];

  extraPackages = with pkgs; [
    manix # should just install this globally (what uses this? Telescope?)
  ];

}

# Not available as nixvim plugins and haven't bothered to install manually yet
#   'opdavies/toggle-checkbox.nvim',
#   { 
#     'justinmk/vim-gtfo', -- :open directory for current file in finder (gof) or terminal (got)
#     config = function()
#       vim.g["gtfo#terminals"] = { mac = "/Users/desanso/Applications/Kitty.app"}
#     end,
#   },
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
