{
  plugins.nvim-surround = {
    enable = true;
  };
}

# {
#     "kylechui/nvim-surround",
#     version = "*", -- Use for stability; omit to use `main` branch for the latest features
#     event = "VeryLazy",
#     config = function()
#       require("nvim-surround").setup({
#         -- Configuration here, or leave empty to use defaults
#         surrounds = {
#           ["m"] = {
#               add = { "[", "]{.mark}" },
#               find = function()
#                   return M.get_selection({ pattern = "(%[)().-(]{%.mark})()" })
#               end,
#               delete = "^(%[)().-(]{%.mark})()$",
#           },
#           ["f"] = {
#               add = { "[", "]{.fragment .highlight-current-green}" },
#               find = function()
#                   return M.get_selection({ pattern = "(%[)().-(]{%.fragment .highlight-current-red})()" })
#               end,
#               delete = "^(%[)().-(]{%.mark})()$",
#           },
#           ["x"] = {
#               add = { "[", "]{.fragment .highlight-current-green fragment-index=1}" },
#               find = function()
#                   return M.get_selection({ pattern = "(%[)().-(]{%.fragment .highlight-current-red})()" })
#               end,
#               delete = "^(%[)().-(]{%.mark})()$",
#           },
#         }
#       })
#     end
#   }
