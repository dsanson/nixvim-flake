{ pkgs, ...}:
{
  plugins.obsidian = {
    enable = true;
    settings = {
      legacy_commands = false;
      workspaces = [
        {
          name = "notes";
          path = "~/notes";
        }
      ];
      daily_notes = {
        folder = "daily";
        workdays_only = false;
      };
      attachments = {
        confirm_img_paste = true;
        img_folder = "attachments";
        img_text_func = ''
          function(client, path)
            ---@type string
            local link_path
            link_path = tostring(path)
            local display_name = vim.fs.basename(link_path)
            return string.format("![%s](%s)", display_name, link_path)
          end
        '';
      };
      note_id_func = ''
        function(title)
          -- Just use title as note ID
          -- A note with the title 'My new note' will be given the ID 'My new note',
          --- and therefore the file name 'My new note.md'
          local new_title = ""
          if title == nil then
            -- If title is nil, just use 4 random uppercase letters.
            for _ = 1, 4 do
               new_title = new_title .. string.char(math.random(65, 90))
            end
          else
            new_title = title
          end
          return new_title
        end
      '';
    };
  };
  keymaps = [
    { key = "<leader>nf";
      action = "<cmd>Obsidian search<cr>";
      mode = ["n"]; 
      options.desc = "find notes"; 
    }
    { key = "<leader>nl";
      action = "<cmd>Obsidian links<cr>";
      mode = ["n"]; 
      options.desc = "select links"; 
    }
    { key = "<leader>nb";
      action = "<cmd>Obsidian backlinks<cr>";
      mode = ["n"]; 
      options.desc = "select backlinks"; 
    }
    { key = "<leader>nh";
      action = "<cmd>Obsidian quick_switch Home.md<cr>";
      mode = ["n"]; 
      options.desc = "open home note"; 
    }
    { key = "<leader>nn";
      action = "<cmd>Obsidian new<cr>";
      mode = ["n"]; 
      options.desc = "new note"; 
    }
    { key = "<leader>nd";
      action = "<cmd>Obsidian dailies<cr>";
      mode = ["n"]; 
      options.desc = "search daily notes"; 
    }
    { key = "<leader>ndd";
      action = "<cmd>Obsidian today<cr>";
      mode = ["n"]; 
      options.desc = "open today's note"; 
    }
    { key = "<leader>ndt";
      action = "<cmd>Obsidian tomorrow<cr>";
      mode = ["n"]; 
      options.desc = "open tomorrow's note"; 
    }
    { key = "<leader>ndy";
      action = "<cmd>Obsidian yesterday<cr>";
      mode = ["n"]; 
      options.desc = "open yesterday's note"; 
    }
    { key = "<leader>no";
      action = "<cmd>Obsidian open<cr>";
      mode = ["n"]; 
      options.desc = "open in Obsidian.app"; 
    }
    { key = "<leader>nw";
      action = "<cmd>lua vim.api.nvim_command('Obsidian quick_switch ' .. vim.fn.expand('<cword>'))<cr>";
      mode = ["n"];
      options.desc = "find note by cword";
    } 
    { key = "<leader>jn";
      action = "<cmd>lua vim.api.nvim_command('Obsidian quick_switch ' .. vim.fn.expand('<cword>'))<cr>";
      mode = ["n"];
      options.desc = "jump to note matching cword";
    } 
  ];

  extraPackages = with pkgs; [
    pngpaste
  ];

}
