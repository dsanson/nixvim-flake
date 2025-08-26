{ pkgs, ...}:

{
  extraPlugins =  [
    (pkgs.vimUtils.buildVimPlugin {
     name = "vim-scimark";
     src = pkgs.fetchFromGitHub {
       owner = "mipmip";
       repo = "vim-scimark";
       rev = "e6947e1f5dee201a01a29d147363b6ad0b020dba";
       hash = "";
     };
     doCheck = false;  
    })
  ];
}
