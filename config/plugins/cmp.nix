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
    })
  ];

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

