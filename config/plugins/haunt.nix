{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "haunt.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "TheNoeTrevino";
        repo = "haunt.nvim";
        rev = "815141d7367c9d895e902db27e2d25d4652ad0fc";
        hash = "sha256-2miX/k+ZdjThtwoY63mcKKXHSwjH624N7acJtiZuPjw=";
      };
      doCheck = false;
    })
  ];

  keymaps = [
    { 
      key = "<leader>aa"; 
      mode = [ "n" ];
      action.__raw = "function() require(\"haunt.api\").annotate() end"; 
      options.desc = "Annotate";
    }
    { 
      key = "<leader>at"; 
      mode = [ "n" ];
      action.__raw = "function() require(\"haunt.api\").toggle_annotation() end"; 
      options.desc = "Toggle annotation";
    }
    { 
      key = "<leader>aT"; 
      mode = [ "n" ];
      action.__raw = "function() require(\"haunt.api\").toggle_all_lines() end"; 
      options.desc = "Toggle all annotation";
    }
    { 
      key = "<leader>ad"; 
      mode = [ "n" ];
      action.__raw = "function() require(\"haunt.api\").delete() end"; 
      options.desc = "Delete annotation";
    }
    { 
      key = "<leader>aC"; 
      mode = [ "n" ];
      action.__raw = "function() require(\"haunt.api\").clear_all() end"; 
      options.desc = "Delete all annotations";
    }
    { 
      key = "<leader>an"; 
      mode = [ "n" ];
      action.__raw = "function() require(\"haunt.api\").next() end"; 
      options.desc = "Next annotation";
    }
    { 
      key = "<leader>ap"; 
      mode = [ "n" ];
      action.__raw = "function() require(\"haunt.api\").prev() end"; 
      options.desc = "Previous annotation";
    }
    { 
      key = "<leader>al"; 
      mode = [ "n" ];
      action.__raw = "function() require(\"haunt.picker\").show() end"; 
      options.desc = "List annotations";
    }
    { 
      key = "<leader>ay"; 
      mode = [ "n" ];
      action.__raw = "function() require(\"haunt.api\").yank_locations({current_buffer = true}) end"; 
      options.desc = "Yank annotations";
    }
  ];
}

