return {
  close_if_last_window = true,
  enable_diagnostics = true,

  filesystem = {
    filtered_items = {
      visible = true,
      hide_dotfiles = false,
      -- hide_gitignored = false,
    },
    -- follow_current_file = true,
  },
  follow_current_file = true,
  buffers = {
    follow_current_file = true,
  },
  -- window = {
  --   position = "right",
  --   width = 35,
  -- },

  window = { -- see https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/popup for
    mappings = {
      ["z"] = "",
    },
  },
}
