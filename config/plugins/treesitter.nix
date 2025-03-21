{pkgs,...}:
# let
#   pandoc-markdown = pkgs.tree-sitter.buildGrammar {
#     language = "pandoc";
#     version = "0.0.0+rev=3af19da";
#     src = pkgs.fetchFromGitHub {
#       owner = "jmbuhr";
#       repo = "tree-sitter-pandoc-markdown";
#       rev = "3af19dadd74477952126e8cf5da4149108a632ac";
#       sha256 = "0qj43r7sjwhxf90hzk2qzki7cjgpgn0ks1hzqfcxg5f2n3yskqj0";
#     };
#     meta.homepage = "https://github.com/jmbuhr/tree-sitter-pandoc-markdown";
#   };
# in
{
  plugins.treesitter = {
    enable = true;
    folding = true;
    # grammarPackages = pkgs.vimPlugins.nvim-treesitter.passthru.allGrammars ++ [
    #   pandoc-markdown
    # ];
    settings = {
      auto_install = false;
      ensure_installed = "all";
      highlight = {
        additional_vim_regex_highlighting = true;
        custom_captures = { };
        disable = [ ];
        enable = true;
      };
      ignore_install = [ ];
      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = false;
          node_decremental = "grm";
          node_incremental = "grn";
          scope_incremental = "grc";
        };
      };
      indent = {
        enable = true;
      };
      parser_install_dir = {
        __raw = "vim.fs.joinpath(vim.fn.stdpath('data'), 'treesitter')";
      };
      sync_install = false;
    };
  };
}


