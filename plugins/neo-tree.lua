---@type LazySpec
return {
  "nvim-neo-tree/neo-tree.nvim",
  -- opts = function(_, opts) -- override the options using lazy.nvim
  -- return {
  opts = {
    close_if_last_window = true,
    enable_diagnostics = true,
    filesystem = {
      follow_current_file = true,
    },
    buffers = {
      follow_current_file = true,
    },
    window = {
      -- see https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/popup for
      -- position = "right",
      mappings = {
        ["z"] = "",
        ["l"] = "open",
      },
      -- position = "right",
      -- width = 35,
    },
  },
  -- end,
}
