{ ... }:

{
  globals = {
    mapleader = " ";
    maplocalleader = ",";
  };

  userCommands = {
    W.command = "w";
    Wq.command = "wq";
  };

  keymaps = [
    # movement based on visual lines
    { key = "j"      ; action = "gj"; mode = [ "n" "v" ]; }
    { key = "<Down>" ; action = "gj"; mode = [ "n" "v" ]; }
    { key = "k"      ; action = "gk"; mode = [ "n" "v" ]; }
    { key = "<Up>"   ; action = "gk"; mode = [ "n" "v" ]; }

    # shift in visual mode without exiting visual mode
    { key = "<"      ; action = "<gv"; mode = [ "v" ]; }
    { key = ">"      ; action = ">gv"; mode = [ "v" ]; }

    # gf creates new file if none exists
    { key = "gf"     ; action = "<cmd>e <cfile><cr>"; mode = [ "n" ]; }

    # ESC removes highlights from search terms
    { 
      key = "<Esc>";
      action = "<Esc><cmd>noh<CR><Esc>"; 
      mode = [ "n" "i" "v" ]; 
      options.silent = true;
    }

    { 
      key = "<leader>tw"; 
      mode = [ "n" ];
      action = "<cmd>set nolist!<cr>"; 
      options.desc = "Show invisibles";
    }
    { 
      key = "<leader>ta"; 
      action = "<cmd>set arabic!<cr>"; 
      options.desc = "Arabic mode";
    }
    { 
      key = "<leader>tn"; 
      mode = [ "n" ];
      action = "<cmd>set number!<cr>"; 
      options.desc = "Toggle numbers";
    }
    { 
      key = "<leader>tr"; 
      mode = [ "n" ];
      action = "<cmd>set relativenumber!<cr>"; 
      options.desc = "Toggle relative line numbers";
    }
    { 
      key = "<leader>tc";
      mode = [ "n" ];
      action.__raw = "function () vim.o.cursorline = not vim.o.cursorline end";
      options.desc = "Toggle cursorline";
    }

  ];

  extraConfigLua = ''

    vim.cmd('hi clear VertSplit') -- clear highlighting on split


    vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, { desc = "Go to previous" })
    vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, { desc = "Go to next" })

    vim.keymap.set('n', '<leader>jz', "<cmd>!open \"$(bib2path2 -z \"<cWORD>\")\"<CR>", { desc = "Open in Zotero" })
    vim.keymap.set('n', '<leader>jp', "<cmd>!open \"$(bib2path2 \"<cWORD>\")\"<CR>", { desc = "Open PDF in Preview.app"})
    vim.keymap.set('n', '<leader>jx', 'gx', { desc = 'Open file (gx)' })
    vim.keymap.set('n', '<leader>jf', 'gF', { desc = 'Open file in nvim (gF)' })

    vim.keymap.set('n', '<leader>wb', "<cmd>.!bib2path2 -b \"<cWORD>\"<CR>", { desc = "replace citekey with bibliographic entry" })
    -- TODO: functions for inserting images from zotero in different ways
    --   copy image to local media folder
    --   insert as markdown with alt text
    --   insert just as path
    --   include a yaml nocite key

    vim.keymap.set('n', '<leader>wi', "<cmd>.!bib2path2 -ip \"<cWORD>\"<CR>", { desc = "replace citekey with image path" })

    -- vim.keymap.set('n', '<leader>tw', "<cmd>set nolist!<cr>", { desc = "Show invisibles" })
    -- vim.keymap.set('n', '<leader>ta', "<cmd>set arabic!<cr>", { desc = "Arabic mode" })
    -- vim.keymap.set('n', '<leader>tn', "<cmd>set number!<cr>", { desc = "Toggle numbers" })
    -- vim.keymap.set('n', '<leader>tr', "<cmd>set relativenumber!<cr>", { desc = "Toggle relative line numbers" })
    -- vim.keymap.set('n', '<leader>tc', function () vim.o.cursorline = not vim.o.cursorline end, { desc = "Toggle cursorline" })

    vim.keymap.set('n', '<leader>id', '"=strftime("%Y-%m-%d")<CR>p', { desc = "Insert today's date" })
    vim.keymap.set('n', '<leader>it', '"=strftime("%FT%T%Z")<CR>p', { desc = "Insert timestamp" })

    vim.keymap.set('n', '<leader>Cp', '<cmd>!carnap put %<cr>', { desc = "Upload to Carnap" })
    vim.keymap.set('n', '<leader>Co', '<cmd>!carnap open %<cr>', { desc = "Open on Carnap" })

    vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = "Switch buffer" })
    vim.keymap.set('n', '<leader>bn', '<cmd>bnext<cr>', { desc = "Next buffer" })
    vim.keymap.set('n', '<leader>bp', '<cmd>bprevious<cr>', { desc = "Previous buffer" })
    vim.keymap.set('n', '<leader>bt', '<cmd>terminal<cr>', { desc = "Open terminal buffer" })

    -- Terminal Mode mappings

    local function termcodes(str)
       return vim.api.nvim_replace_termcodes(str, true, true, true)
    end

    vim.keymap.set('t', '<leader><Esc>', termcodes '<C-\\><C-n>')
  '';
}



