{ pkgs, ...}:
{
  plugins.lsp = {
    enable = true;
    servers = {
      bashls.enable = true;
      clangd.enable = true;
      gopls.enable = true;
      nixd.enable = true; # for nix
      nil_ls.enable = false; # for nix (lighter weight?)
      eslint.enable = true;
      cssls.enable = true;
      hls.enable = true; # for haskell
      hls.installGhc = true;
      html.enable = true;
      jsonls.enable = true;
      pyright.enable = true; # for python
      r_language_server.enable = true;
      r_language_server.package = null;
      yamlls.enable = true;
      lua_ls.enable = true;
      lemminx.enable = true; # for XML
      nginx_language_server.enable = true;
      marksman.enable = false; # for markdown
      typst_lsp.enable = false;
      tinymist.enable = true; # for typst
      texlab.enable = true; # for latex
      ltex = {
        enable = true;
        filetypes = [ "markdown" "tex" "plaintext" "rst" ];
        settings = {
          language = "en-US";
          disabledRules = {
           "en-US" = [ "MORFOLOGIK_RULE_EN_US" "WHITESPACE_RULE" ];
          };
        };
      };
    };


    keymaps.lspBuf = {
      "gd" = "definition";
      "gr" = "references";
      "gt" = "type_definition";
      "gi" = "implementation";
      "ga" = "code_action";
    };

  };

}

# lsp.dotls.setup {
#   capabilities = capabilities
# }
# lsp.vimls.setup {
#   capabilities = capabilities
# }


# local words = {}
# for word in io.open(vim.fn.stdpath("config") .. "/spell/en.utf-8.add", "r"):lines() do
# 	table.insert(words, word)
# end

# settings = {
#     ltex = {
#         dictionary = {
#             ["en-US"] = words,
#         },
#     },
# },


# lsp.ltex.setup{
#   on_attach = on_attach,
#   autostart = true,
#   filetypes = { 'markdown', 'tex', 'plaintex', 'rst'  },
#   settings = {
#     ltex = {
#       disabledRules = {
#         ["en"]    = { "MORFOLOGIK_RULE_EN", "WHITESPACE_RULE" },
#         ["en-US"] = { "MORFOLOGIK_RULE_EN_US", "WHITESPACE_RULE" },
#       },
#     },
#   },
# }
