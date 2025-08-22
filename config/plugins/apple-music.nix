{ pkgs, ...}:

{
  extraPlugins =  [
    (pkgs.vimUtils.buildVimPlugin {
     name = "apple-music";
     src = pkgs.fetchFromGitHub {
       owner = "p5quared";
       repo = "apple-music.nvim";
       rev = "164f8614f659dd2fb1c95010d951f7178e24c1de";
       hash = "sha256-dXQvT/flGYtyOpzZrcJI2BuXZZiaby2K/t8RDaoop7g=";
     };
     doCheck = false;  
    })
  ];

  keymaps = [
    { key = "<leader>mp";
      action.__raw = "function() require('apple-music').toggle_play() end";
      mode = ["n"]; 
      options.desc = "Toggle Playback"; 
    }
    { key = "<leader>ms";
      action.__raw = "function() require('apple-music').toggle_shuffle() end";
      mode = ["n"]; 
      options.desc = "Toggle Shuffle"; 
    }
    { key = "<leader>ml";
      action.__raw = "function() require('apple-music').select_playlist() end";
      mode = ["n"]; 
      options.desc = "Select Playlist"; 
    }
    { key = "<leader>ma";
      action.__raw = "function() require('apple-music').select_album() end";
      mode = ["n"]; 
      options.desc = "Select Album"; 
    }
    { key = "<leader>mt";
      action.__raw = "function() require('apple-music').select_track() end";
      mode = ["n"]; 
      options.desc = "Select Track"; 
    }
    { key = "<leader>mc";
      action.__raw = "function() require('apple-music').select_track() end";
      mode = ["n"]; 
      options.desc = "Cleanup"; 
    }
  ];
}
