{ pkgs, ...}:
{
  # Import all your configuration modules here
  imports = [ 
    ./options.nix
    ./abbreviations.nix
    ./digraphs.nix
    ./mappings.nix

    ./plugins/treesitter.nix
    ./plugins/cmp.nix
    ./plugins/lsp.nix
    ./plugins/which-key.nix
    ./plugins/trouble.nix

    ./plugins/auto-save.nix
    ./plugins/lastplace.nix
    ./plugins/oil.nix
    ./plugins/rainbow-delimiters.nix
    ./plugins/otter.nix
    ./plugins/todo-comments.nix
    ./plugins/neo-tree.nix
    ./plugins/csv.nix
    ./plugins/markdown-oxide.nix
    ./plugins/pandoc.nix
    ./plugins/render-markdown.nix
    ./plugins/quarto.nix
    
    ./plugins/mini.nix
    # replace with mini?
    ./plugins/surround.nix
    ./plugins/easy-align.nix
    ./plugins/commentary.nix

    # replace with snacks?
    ./plugins/zen-mode.nix
    ./plugins/twilight.nix
    ./plugins/image.nix
    ./plugins/git-conflict.nix
    ./plugins/gitsigns.nix
    ./plugins/telescope.nix

  ];

  extraPlugins = with pkgs.vimPlugins; [
    vim-speeddating
    utl-vim
    csv-vim
    boole-nvim
    img-clip-nvim
    (pkgs.vimUtils.buildVimPlugin {
     name = "neopywal";
     src = pkgs.fetchFromGitHub {
       owner = "RedsXDD";
       repo = "neopywal.nvim";
       rev = "09188d79b45694141ec779d05cbcc75f994639d1";
       hash = "sha256-RLwxyGRmU1B8r6xO1YObF8qlNEj7qitNUArUlw092V8=";
     };
     doCheck = false;  
    })
  ];




  extraConfigLua = ''
    require('boole').setup({
      mappings = {
        increment = '<C-a>',
        decrement = '<C-x>'
      },
    })
  '';

  extraPackages = with pkgs; [
    manix # should just install this globally
  ];

  # colorscheme 
  opts.background = "dark"; # neopywal manages light and dark on its own
  colorscheme = "neopywal";

  performance.byteCompileLua.enable = true;

}

# See ./markdown-oxide.nix instead
#
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
