{ pkgs, ...}:
{
  plugins.lsp = {
    enable = true;
    servers = {
      bashls.enable = true;
      clangd.enable = true;
      gopls.enable = true;
      nixd.enable = true; # for nix
      nil-ls.enable = false; # for nix (lighter weight?)
      eslint.enable = true;
      cssls.enable = true;
      hls.enable = true; # for haskell
      html.enable = true;
      jsonls.enable = true;
      pyright.enable = true; # for python
      r-language-server.enable = true;
      yamlls.enable = true;
      lua-ls.enable = true;
      lemminx.enable = true; # for XML
      nginx-language-server.enable = true;
      marksman.enable = false; # for markdown
      typst-lsp.enable = false;
      tinymist.enable = true; # for typst
      texlab.enable = true; # for latex
      ltex = {
        enable = true;
        filetypes = [ "markdown" "tex" "plaintext" "rst" ];
        extraOptions = {
          disabledRules = {
           "en"    = [ "MORFOLOGIK_RULE_EN" "WHITESPACE_RULE" ];
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
