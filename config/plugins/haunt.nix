{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "haunt.nvim";
      src = pkgs.fetchFromGitHub {
        owner = "TheNoeTrevino";
        repo = "haunt.nvim";
        rev = "113c2f0689fc8c203f7f316da992e44b074a71ea";
        hash = "sha256-ldw/5iekHDjyLr3eWP4MR2xBOZz/sDdLMJIVZgIcm4Y=";
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

