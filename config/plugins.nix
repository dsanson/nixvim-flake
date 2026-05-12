{ pkgs, ...}:
{

  imports = [ 
    ./plugins/treesitter.nix
    ./plugins/treesitter-context.nix
    ./plugins/cmp.nix
    #./plugins/blink.nix #replace cmp.nix with blink eventually
    ./plugins/which-key.nix
    ./plugins/trouble.nix

    ./plugins/auto-save.nix
    ./plugins/lastplace.nix
    ./plugins/auto-session.nix
    ./plugins/oil.nix
    ./plugins/rainbow-delimiters.nix
    # ./plugins/otter.nix
    ./plugins/todo-comments.nix
    ./plugins/csv.nix
    ./plugins/pandoc.nix
    #./plugins/render-markdown.nix
    ./plugins/quarto.nix
    ./plugins/obsidian.nix
    ./plugins/snacks.nix

    ./plugins/mini.nix
    # replace with mini?
    ./plugins/easy-align.nix

    # replace with snacks?
    ./plugins/zen-mode.nix
    ./plugins/neogit.nix
    ./plugins/git-conflict.nix
    ./plugins/gitsigns.nix
    ./plugins/telescope.nix
    
    ./plugins/utl-vim.nix
    ./plugins/dial.nix
    ./plugins/img-clip-nvim.nix
    ./plugins/neopywal.nix
    ./plugins/apple-music.nix
    ./plugins/vim-scimark.nix

    ./plugins/haunt.nix

  ];

  extraPackages = with pkgs; [
    manix # should just install this globally (what uses this? Telescope?)
  ];

}

