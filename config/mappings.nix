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
    { key = "<"      ; action = ">gv"; mode = [ "v" ]; }

    # gf creates new file if none exists
    { key = "gf"     ; action = "<cmd>e <cfile><cr>"; mode = [ "n" ]; }

    # ESC removes highlights from search terms
    { 
      key = "<Esc>";
      action = "<Esc><cmd>noh<CR><Esc>"; 
      mode = [ "n" "i" "v" ]; 
      options.silent = true;
    }

    # maps for opening main notes file
    { key = "gn";         action = "<cmd>edit ~/d/zettel/Home.md<cr>"; mode = ["n"]; options.desc = "open notes"; }
    { key = "<leader>jn"; action = "<cmd>edit ~/d/zettel/Home.md<cr>"; mode = ["n"]; options.desc = "open notes"; }

  ];

  extraConfigLua = ''

    vim.cmd('hi clear VertSplit') -- clear highlighting on split

    local wk = require('which-key')

    vim.keymap.set('n', '<leader><leader>', '<cmd>Telescope commands<cr>', { desc = "Run command" })

    wk.add({ { "<leader>f", group = "file" } })
    vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files hidden=true no_ignore=true<cr>', { desc = "Find file" })
    vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = "Grep files" })
    vim.keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<cr>', { desc = "Recent files" })
    vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = "Switch buffer" })
    vim.keymap.set('n', '<leader>fz', '<cmd>Telescope zoxide list<cr>', { desc = "Zoxide" })

    wk.add({ { "<leader>q", group = "quitting" } })
    vim.keymap.set('n', '<leader>qq', '<cmd>qw<cr>', { desc = "Save and quit" })
    vim.keymap.set('n', '<leader>qx', '<cmd>q!<cr>', { desc = "Quit without saving" })

    wk.add({ { "<leader>b", group = "buffer" } })
    vim.keymap.set('n', '<leader>bb', '<cmd>Telescope buffers theme=dropdown<cr>', { desc = "Switch buffer" })
    vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = "Switch buffer" })
    vim.keymap.set('n', '<leader>bn', '<cmd>bnext<cr>', { desc = "Next buffer" })
    vim.keymap.set('n', '<leader>bp', '<cmd>bprevious<cr>', { desc = "Previous buffer" })
    vim.keymap.set('n', '<leader>bt', '<cmd>terminal<cr>', { desc = "Open terminal buffer" })

    wk.add({ { "<leader>d", group = "diagnostics" } })
    vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, { desc = "Go to previous" })
    vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, { desc = "Go to next" })

    wk.add({ { "<leader>j", group = "jump" } })
    vim.keymap.set('n', '<leader>jz', "<cmd>!open \"$(bib2path2 -z \"<cWORD>\")\"<CR>", { desc = "Open in Zotero" })
    vim.keymap.set('n', '<leader>jp', "<cmd>!open \"$(bib2path2 \"<cWORD>\")\"<CR>", { desc = "Open PDF in Preview.app"})
    vim.keymap.set('n', '<leader>jx', 'gx', { desc = 'Open file (gx)' })
    vim.keymap.set('n', '<leader>jf', 'gF', { desc = 'Open file in nvim (gF)' })
    vim.keymap.set('n', '<leader>jh', '<cmd>Telescope heading<cr>', { desc = 'Jump to heading' })
    vim.keymap.set('n', '<leader>jb', '<cmd>Telescope bookmarks<cr>', { desc = 'Jump to bookmark' })
    vim.keymap.set('n', '<leader>jo', '<cmd>!open \"obsidian://open?vault=Everything&file=%:t:r\"<cr>', { desc = 'Open in Obsidian' })
    vim.keymap.set('n', '<leader>jd',  '<cmd>Telescope lsp_definitions<cr>', { desc = 'Jump to lsp definition' })
    vim.keymap.set('n', '<leader>jr',  '<cmd>Telescope lsp_references<cr>', { desc = 'Jump to lsp reference' })

    wk.add({ { "<leader>m", group = "marks" } })
    vim.keymap.set('n', '<leader>ma', '<cmd>BookmarkAnnotate<cr>', { desc = "add/edit/remove annotation"})
    vim.keymap.set('n', '<leader>mt', '<cmd>BookmarkToggle<cr>', { desc = "add/remove bookmark"})
    vim.keymap.set('n', '<leader>mn', '<cmd>BookmarkNext<cr>', { desc = "Next bookmark"})
    vim.keymap.set('n', '<leader>mp', '<cmd>BookmarkPrev<cr>', { desc = "Previous bookmark"})
    vim.keymap.set('n', '<leader>ms', '<cmd>Telescope vim_bookmarks current_file<cr>', { desc = "Search bookmarks in buffer"})
    vim.keymap.set('n', '<leader>mS', '<cmd>Telescope vim_bookmarks all<cr>', { desc = "Search all bookmarks"})
    vim.keymap.set('n', '<leader>mm', '<cmd>Telescope marks<cr>', { desc = "Search all marks"})

    wk.add({ { "<leader>w", group = "writing" } })
    vim.keymap.set('n', '<leader>wb', "<cmd>.!bib2path2 -b \"<cWORD>\"<CR>", { desc = "replace citekey with bibliographic entry" })

    wk.add({ { "<leader>t", group = "toggles"} })
    vim.keymap.set('n', '<leader>tw', "<cmd>set nolist!<cr>", { desc = "Show invisibles" })
    vim.keymap.set('n', '<leader>ta', "<cmd>set arabic!<cr>", { desc = "Arabic mode" })
    vim.keymap.set('n', '<leader>tz', "<cmd>ZenMode<cr>", { desc = "Zen mode" })
    vim.keymap.set('n', '<leader>td', "<cmd>Twilight<cr>", { desc = "Twilight mode" })
    vim.keymap.set('n', '<leader>tt', "<cmd>Neotree document_symbols toggle<cr>", { desc = "Table of Contents" })
    vim.keymap.set('n', '<leader>tf', "<cmd>Neotree filesystem toggle<cr>", { desc = "Filesystem" })
    vim.keymap.set('n', '<leader>tb', "<cmd>Neotree buffers toggle<cr>", { desc = "Buffers" })
    vim.keymap.set('n', '<leader>tc', function () vim.o.cursorline = not vim.o.cursorline end, { desc = "Toggle cursorline" })

    wk.add({ { "<leader>i", group = "inserts"} })
    vim.keymap.set('n', '<leader>id', '"=strftime("%Y-%m-%d")<CR>p', { desc = "Insert today's date" })
    vim.keymap.set('n', '<leader>it', '"=strftime("%FT%T%Z")<CR>p', { desc = "Insert timestamp" })
    vim.keymap.set('n', '<leader>ie', function() require'telescope.builtin'.symbols{ sources = {'emoji'} } end, { desc = "Insert emoji" })
    vim.keymap.set('n', '<leader>im', function() require'telescope.builtin'.symbols{ sources = {'math'} } end, { desc = "Insert math symbol" })
    vim.keymap.set('n', '<leader>il', function() require'telescope.builtin'.symbols{ sources = {'logic'} } end, { desc = "Insert logic symbol" })
    vim.keymap.set('n', '<leader>ib',  "<cmd>Telescope bibtex<cr>", { desc = "Insert bib key" })

    wk.add({ { "<leader>C", group = "carnap"} })
    vim.keymap.set('n', '<leader>Cp', '<cmd>!carnap put %<cr>', { desc = "Upload to Carnap" })
    vim.keymap.set('n', '<leader>Co', '<cmd>!carnap open %<cr>', { desc = "Open on Carnap" })

    wk.add({ { "<leader>c", group = "clipboard"} })
    vim.keymap.set('n', '<leader>cs', '<cmd>Telescope neoclip<cr>', { desc = "Search old clippings" })

    wk.add({ { "<leader>h", group = "help"} })
    vim.keymap.set('n', '<leader>hh', '<cmd>Telescope help_tags<cr>', { desc = "Search help" })
    vim.keymap.set('n', '<leader>hm', '<cmd>Telescope man_pages<cr>', { desc = "Search man pages" })

    -- Terminal Mode mappings

    local function termcodes(str)
       return vim.api.nvim_replace_termcodes(str, true, true, true)
    end

    vim.keymap.set('t', '<leader><Esc>', termcodes '<C-\\><C-n>')
  '';
}



