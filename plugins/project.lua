return {
  "ahmedkhalf/project.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  lazy = false,
  config = function()
    require("project_nvim").setup {
      detection_methods = { "pattern" },
      patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
      silent_chdir = false,
      -- local telescope = require "telescope"
      -- telescope.load_extension "projects"
    }
  end,
}
