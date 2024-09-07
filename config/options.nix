{ ... }:

{
  config.opts = {
    updatetime = 100; # Faster completion

    number = true;
    relativenumber = true;
    splitbelow = true;
    splitright = true;
    linespace = 0;    # No extra spaces between rows
    pumheight = 20;   # Avoid the pop up menu occupying the whole screen
    listchars = "tab:▸ ,eol:↵,trail:·,extends:↷,precedes:↶"; # chars for invisibles
    list = false; #No visible whitespace by default
    whichwrap = "b,s,<,>,h,l"; # vim.o.whichwrap .. ',<,>,h,l' # Allow backspace and cursor keys to cross line boundaries
    autoindent = true;

    mouse = "a";
    clipboard = "unnamedplus";

    # tabs
    shiftwidth    = 2;   # Use indents of 4 spaces
    tabstop       = 4;     # An indentation every four columns
    softtabstop   = 2;  # Let backspace delete indent
    smartindent   = true;   # autoindent new lines
    expandtab     = true;    # Tabs are spaces, not tabs

    ignorecase = true;
    incsearch = true;
    smartcase = true;
    wrapscan = false;
    wildmode = "list:longest";

    # status line and messages
    ruler = true;      # Hide the ruler
    statusline = "%m%r%t %y [%c,%l,%P]"; #Status line
    laststatus = 0; #Hide status line
    shortmess = "atOI";    # avoid being spammed by messages
    showcmd = true;      # Show partial commands in status line and Selected characters/lines in visual mode
    showmode = true;      # Show current mode in command-line
    matchtime = 5;         # Show matching time
    report = 0;         # Always report changed lines

    # saves and backups
    swapfile = true;
    #dir = "/tmp";          # directory for swapfile (why?)
    autowrite = true;    # Automatically write a file when leaving a modified buffer
    hidden = true;    # Allow buffer switching without saving
    backup = false;
    writebackup = true;
    backupcopy = "yes";  #Backup preserves file attributes
    #backupdir = vim.fn.stdpath("data") .. "/backup";
    undofile = true; # Build-in persistent undo

    scrolljump    = 5;        # Line to scroll when cursor leaves screen
    scrolloff     = 3;    # Minumum lines to keep above and below cursor

  };
}

# neovim terminal 
# cmd('autocmd TermOpen * startinsert') # Enter "terminal mode" automatically


