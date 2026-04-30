{
  plugins.dial = {
    enable = true;
    luaConfig.post = ''
      local augend = require("dial.augend")
      require("dial.config").augends:register_group{
        -- default augends used when no group name is specified
        default = {
          augend.integer.alias.decimal,   -- nonnegative decimal number (0, 1, 2, 3, ...)
          augend.integer.alias.hex,       -- nonnegative hex number  (0x01, 0x1a1f, etc.)
          augend.date.alias["%Y/%m/%d"],  -- date (2022/02/19, etc.)
          augend.constant.alias.bool,    -- boolean value (true <-> false)
        },
      }
    '';
  };

  keymaps = [


    { key = "<C-a>";
      action = "<Plug>(dial-increment)";
      mode = ["n"]; 
      options.desc = "increment"; 
    }
    { key = "<C-x>";
      action = "<Plug>(dial-decrement)";
      mode = ["n"]; 
      options.desc = "decrement"; 
    }
    { key = "g<C-a>";
      action = "<Plug>(dial-g-increment)";
      mode = ["n"]; 
      options.desc = "increment"; 
    }
    { key = "g<C-x>";
      action = "<Plug>(dial-g-decrement)";
      mode = ["n"]; 
      options.desc = "decrement"; 
    }
    { key = "<C-a>";
      action = "<Plug>(dial-increment)";
      mode = ["x"]; 
      options.desc = "increment"; 
    }
    { key = "<C-x>";
      action = "<Plug>(dial-decrement)";
      mode = ["x"]; 
      options.desc = "decrement"; 
    }
    { key = "g<C-a>";
      action = "<Plug>(dial-g-increment)";
      mode = ["x"]; 
      options.desc = "increment"; 
    }
    { key = "g<C-x>";
      action = "<Plug>(dial-g-decrement)";
      mode = ["x"]; 
      options.desc = "decrement"; 
    }

  ];

}


