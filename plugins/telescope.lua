---@type LazySpec
return {
  "nvim-telescope/telescope.nvim",
  dependencies = { -- add a new dependency to telescope that is our new plugin
    {
      "ahmedkhalf/project.nvim",
      opts = {
        detection_methods = { "pattern" },
      },
    },
    {
      "AckslD/nvim-neoclip.lua",
      opts = {},
    },
  },
  config = function(plugin, opts)
    -- run the core AstroNvim configuration function with the options table
    require "astronvim.plugins.configs.telescope"(plugin, opts)

    -- require telescope and load extensions as necessary
    local telescope = require "telescope"
    telescope.load_extension "projects"
    telescope.load_extension "neoclip"
  end,
}
