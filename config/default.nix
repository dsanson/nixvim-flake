{ pkgs, ...}:
{
  # Import all your configuration modules here
  imports = [ 
    ./options.nix
    ./abbreviations.nix
    ./digraphs.nix
    ./mappings.nix

    ./plugins/auto-save.nix
    ./plugins/cmp.nix
    ./plugins/commentary.nix
    ./plugins/treesitter.nix
    ./plugins/which-key.nix
    ./plugins/twilight.nix
    ./plugins/lastplace.nix
    ./plugins/git-conflict.nix
    ./plugins/gitsigns.nix
    ./plugins/surround.nix
    ./plugins/rainbow-delimiters.nix
    ./plugins/zen-mode.nix
    ./plugins/otter.nix
    ./plugins/telescope.nix
    ./plugins/todo-comments.nix
    ./plugins/trouble.nix
    ./plugins/neo-tree.nix
    ./plugins/lsp.nix
    ./plugins/easy-align.nix
    ./plugins/markdown-oxide.nix
    ./plugins/csv.nix
    ./plugins/pandoc.nix
    ./plugins/oil.nix
    ./plugins/mini.nix
    ./plugins/render-markdown.nix
    ./plugins/image.nix
    ./plugins/quarto.nix

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
       rev = "2d65d138463bbbe9d824b9bc1048ef1888017da6";
       hash = "sha256-P28gg5fPPPyhepPHOZFgMnGTToCXK+v4ev6oTRSZXtg=";
     };
     doCheck = false;  
    })
    (pkgs.vimUtils.buildVimPlugin {
     name = "footnote";
     src = pkgs.fetchFromGitHub {
       owner = "chenxin-yan";
       repo = "footnote.nvim";
       rev = "6c55895a90e366dca38f6041775f14cb85bce773";
       hash = "sha256-2kQ18DWkrTcEwSEHbDRHMhEnsxIQKOZtN3U5YYsxYcg=";
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
    require('footnote').setup()
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
# extraConfigLua = ''
#   local capabilities = vim.lsp.protocol.make_client_capabilities()
#
#   require('lspconfig').marksman.setup({
#     on_attach = _M.lspOnAttach,
#     capabilities = vim.tbl_deep_extend( 'force', capabilities or {}, { workspace = { didChangeWatchedFiles = { dynamicRegistration = true, }, }, })
#   })
# '';

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
