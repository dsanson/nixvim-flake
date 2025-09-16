{
  plugins.gitsigns = {
    enable = true;
  };

  plugins.which-key.settings.spec = [
    { 
      __unkeyed = "<leader>h";
      group = "Hunks";
    }
  ];

  keymaps = [
    { key = "]c";
      action.__raw = ''
        function()
          if vim.wo.diff then
            vim.cmd.normal({']c', bang = true})
          else
            require('gitsigns').nav_hunk('next')
          end
        end
      '';
      mode = ["n"]; 
      options.desc = "Next change"; 
    }
    { key = "[c";
      action.__raw = ''
        function()
          if vim.wo.diff then
            vim.cmd.normal({'[c', bang = true})
          else
            require('gitsigns').nav_hunk('prev')
          end
        end
      '';
      mode = ["n"]; 
      options.desc = "Previous change"; 
    }
    { key = "<leader>hs";
      action.__raw = "require('gitsigns').stage_hunk";
      mode = ["n"]; 
      options.desc = "Stage hunk"; 
    }
    { key = "<leader>hr";
      action.__raw = "require('gitsigns').reset_hunk";
      mode = ["n"]; 
      options.desc = "Reset hunk"; 
    }
    { key = "<leader>hs";
      action.__raw = "function() require('gitsigns').stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end";
      mode = ["v"]; 
      options.desc = "Stage hunk"; 
    }
    { key = "<leader>hr";
      action.__raw = "function() require('gitsigns').reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end";
      mode = ["v"]; 
      options.desc = "Reset hunk"; 
    }
    {
      key = "<leader>hS";
      mode = ["n"]; 
      action.__raw = "require('gitsigns').stage_buffer";
      options.desc = "Stage buffer";
    }
    {
      key = "<leader>hu";
      mode = ["n"]; 
      action.__raw = "require('gitsigns').undo_stage_hunk";
      options.desc = "Undo stage hunk";
    }
    {
      key = "<leader>hR";
      mode = ["n"]; 
      action.__raw = "require('gitsigns').reset_buffer";
      options.desc = "Reset buffer";
    }
    {
      key = "<leader>hp";
      mode = ["n"]; 
      action.__raw = "require('gitsigns').preview_hunk";
      options.desc = "Preview hunk";
    }
    {
      key = "<leader>hb";
      mode = ["n"]; 
      action.__raw = "function() require('gitsigns').blame_line{full=true} end";
      options.desc = "Blame hunk";
    }
    {
      key = "<leader>tb";
      mode = ["n"]; 
      action.__raw = "require('gitsigns').toggle_current_line_blame";
      options.desc = "Toggle current line blame";
    }
    {
      key = "<leader>hd";
      mode = ["n"]; 
      action.__raw = "require('gitsigns').diffthis";
      options.desc = "Diff";
    }
    {
      key = "<leader>hD";
      mode = ["n"]; 
      action.__raw = "function() require('gitsigns').diffthis('~') end";
      options.desc = "Diff (base ~)";
    }
    {
      key = "<leader>td";
      mode = ["n"]; 
      action.__raw = "require('gitsigns').toggle_deleted";
      options.desc = "Toggle deleted";
    }
    {
      key = "ih";
      mode = ["o" "x"]; 
      action =  ":<C-U>Gitsigns select_hunk<CR>";
      options.desc = "Select hunk";
    }
  ];
}



