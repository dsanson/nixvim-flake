{ pkgs, ...}:
{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings.sources = [
      { name = "nvim_lsp"; 
        option.markdown_oxide.keyword_pattern = "[[\(\k\| \|\/\|#\)\+]]";
      }
      { name = "nvim_lsp_document_symbol"; }
      { name = "nvim_lua"; }
      { name = "path"; }
      { name = "buffer"; }
      { name = "git"; }
      #{ name = "greek"; }
      #{ name = "pandoc_references"; }
      { name = "treesitter"; }
      { name = "cmdline"; }
    ];
    settings.mapping = {
      __raw = ''
        cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = false }),
          ['<Tab>'] = function(fallback)
            if not cmp.select_next_item() then
              local has_words_before = function()
                unpack = unpack or table.unpack
                local line, col = unpack(vim.api.nvim_win_get_cursor(0))
                return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
              end
              if vim.bo.buftype ~= 'prompt' and has_words_before() then
                cmp.complete()
              else
                fallback()
              end
            end
          end,
          ['<S-Tab>'] = function(fallback)
            if not cmp.select_prev_item() then
              local has_words_before = function()
                unpack = unpack or table.unpack
                local line, col = unpack(vim.api.nvim_win_get_cursor(0))
                return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match('%s') == nil
              end
              if vim.bo.buftype ~= 'prompt' and has_words_before() then
                cmp.complete()
              else
                fallback()
              end
            end
          end,
        })
      '';
    };
    cmdline = {
      "/" = {
        sources = [
          { name = "buffer"; }
        ];
      };
      ":" = {
        sources = [
          { name = "cmdline"; }
          { name = "path"; }
        ];
      };
    };
  };
  
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "pandoc_cmp";
      src = pkgs.fetchFromGitHub {
        owner = "dsanson";
        repo = "cmp-pandoc.nvim";
        rev = "14695d4ec9519d4d21a1002f4c1da2b2d2f3e99b";
        hash = "sha256-izjUzCy1lBmypFjcy0V3mrQJyaWmK35moTBgPYqnsTE=";
      };
      doCheck = false;
    })
  ];
  
  # pandoc_cmp = super.pandoc_cmp.overrideAttrs {
  #   doCheck = false;
  # };



  extraConfigLua = ''
     require('cmp_pandoc').setup({
       filetypes = { "pandoc", "markdown", "rmd" },
       bibliography = {
         path = '/Users/desanso/Documents/d/research/zotero.json',
         documentation = true,
         fields = { "type", "title", "author", "year" },
       },
     })

    local cmp = require('cmp')
    local cmp_config = cmp.get_config()
    table.insert(cmp_config.sources, { name = 'cmp_pandoc' })
    cmp.setup(cmp_config)
  '';

}



