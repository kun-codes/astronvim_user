---@type LazySpec
return {
  "willothy/flatten.nvim",
  opts = {
    callbacks = {
      pre_open = function()
        -- Close toggleterm when an external open request is received
        require("toggleterm").toggle(0)
      end,
      block_end = function()
        -- After blocking ends (for a git commit, etc), reopen the terminal
        require("toggleterm").toggle(0)
      end,
    },
  },
}
