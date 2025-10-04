{ ... }:

{
  lsp = {
    servers = {
      bashls.enable = true;
      clangd.enable = true;
      gopls.enable = true;
      nixd.enable = true; # for nix
      nil_ls.enable = false; # for nix (lighter weight?)
      eslint.enable = true;
      cssls.enable = true;
      hls.enable = true; # for haskell
      # hls.installGhc = true;
      html.enable = true;
      jsonls.enable = true;
      pyright.enable = true; # for python
      r_language_server.enable = true;
      r_language_server.package = null;
      yamlls.enable = true;
      lua_ls = {
        enable = true;
        settings.diagnostics.globals = [ "vim" ];
      };
      lemminx.enable = true; # for XML
      nginx_language_server.enable = true;
      marksman.enable = false; # for markdown
      markdown_oxide.enable = true;
      typst_lsp.enable = false;
      tinymist.enable = true; # for typst
      texlab.enable = true; # for latex
      ltex = {
        enable = true;
        settings = {
          filetypes = [ "markdown" "tex" "plaintext" "rst" ];
        };
        settings = {
          language = "en-US";
          disabledRules = {
           "en-US" = [ "MORFOLOGIK_RULE_EN_US" "WHITESPACE_RULE" ];
          };
        };
      };
    };

    keymaps = [
      {
        key = "gd";
        lspBufAction = "definition";
      }
      {
        key = "gr";
        lspBufAction = "references";
      }
      {
        key = "gt";
        lspBufAction = "type_definition";
      }
      {
        key = "gi";
        lspBufAction = "implementation";
      }
      {
        key = "K";
        lspBufAction = "hover";
      }
      {
        action = "<CMD>LspStop<Enter>";
        key = "<leader>lx";
      }
      {
        action = "<CMD>LspStart<Enter>";
        key = "<leader>ls";
      }
      {
        action = "<CMD>LspRestart<Enter>";
        key = "<leader>lr";
      }
    ];

  };

  plugins.lspconfig.enable = true;

  plugins.ltex-extra = {
    enable = true;
    settings = {
      initCheck = true;
      loadLangs = [
        "en-US"
      ];
      path = ".ltex";
    };
  };

}



