{
  plugins.neo-tree = {
    enable = true;
    closeIfLastWindow = true;
    useDefaultMappings = true;
    window = {
      width = 30;
      position = "left";
    };
    sources = [
      "filesystem"
      "buffers"
      "git_status"
      "document_symbols"
    ];
  };
}

#     require("neo-tree").setup {
#      document_symbols = {
#        follow_cursor = true,
#        renderers = {
#          root = {
#            {"indent"},
#            {"icon", default="" },
#            -- {"name", zindex = 0},
#          },
#          symbol = {
#            {"indent", with_expanders = true},
#            {"kind_icon", default="" },
#            {"container",
#            content = {
#              {"name", zindex = 10},
#              -- {"kind_name", zindex = 20, align = "right"},
#              }
#            }
#          },
#        },
#        kinds = {
#          String = { icon = "", hl = "" }
#        },
#      },
#     }
#     end
#   }
