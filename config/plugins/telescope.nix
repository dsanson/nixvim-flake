{ pkgs, ...}:

{
  plugins.telescope = {
    enable = true;
    extensions = {
      file-browser.enable = true;
      file-browser.settings.hijack_netrw = true;
      file-browser.settings.use_fd = true;

      fzf-native.enable = true;

      media-files.enable = true;

      ui-select.enable = true;

      undo.enable = true;
    };

    enabledExtensions = [
      "heading"
      "manix"
      "project"
      "zoxide"
    ];
  };

  extraPlugins = with pkgs.vimPlugins; [
    telescope-symbols-nvim
    telescope-project-nvim
    telescope-manix
    telescope-zoxide
  ]

  ++

  [(pkgs.vimUtils.buildVimPlugin {
      name = "telescope-heading";
      src = pkgs.fetchFromGitHub {
          owner = "crispgm";
          repo = "telescope-heading.nvim";
          rev = "e85c0f69cb64048f56e76548dcb2f10277576df9";
          hash = "sha256-29nSqK4sWI3m5hHviGBfiSN/GPh8oXGiYrrTmN2okRk=";
      };
  })];

  dependencies = {
    epub-thumbnailer.enable = true;
    ffmpegthumbnailer.enable = true;
    poppler-utils.enable = true;
  };

}

  # { 
  #   "nvim-telescope/telescope-bibtex.nvim",
  #   dependencies = {'nvim-telescope/telescope.nvim'},
  #   config = function ()
  #     require"telescope".setup {
  #       extensions = {
  #         bibtex = {
  #           -- Depth for the *.bib file
  #           depth = 1,
  #           -- Custom format for citation label
  #           custom_formats = {},
  #           -- Format to use for citation label.
  #           -- Try to match the filetype by default, or use 'plain'
  #           format = '',
  #           -- Path to global bibliographies (placed outside of the project)
  #           global_files = {'/Users/desanso/Documents/d/research/zotero.bib'},
  #           -- Define the search keys to use in the picker
  #           search_keys = { 'author', 'year', 'title' },
  #           -- Template for the formatted citation
  #           citation_format = '{{author}} ({{year}}), {{title}}.',
  #           -- Only use initials for the authors first name
  #           citation_trim_firstname = true,
  #           -- Max number of authors to write in the formatted citation
  #           -- following authors will be replaced by "et al."
  #           citation_max_auth = 2,
  #           -- Context awareness disabled by default
  #           context = false,
  #           -- Fallback to global/directory .bib files if context not found
  #           -- This setting has no effect if context = false
  #           context_fallback = true,
  #           -- Wrapping in the preview window is disabled by default
  #           wrap = false,
  #         },
  #       }
  #     }
  #     require"telescope".load_extension("bibtex")
  #   end,
  # }

