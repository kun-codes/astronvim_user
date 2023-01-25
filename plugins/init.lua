return {
  -- You can disable default plugins as follows:
  -- ["goolord/alpha-nvim"] = { disable = true },

  --  ╭──────────────────────────────────────────────────────────╮
  --  │                          themes                          │
  --  ╰──────────────────────────────────────────────────────────╯
  ["yashguptaz/calvera-dark.nvim"] = {},
  ["folke/tokyonight.nvim"] = {
    config = function()
      require("tokyonight").setup {
        styles = {
          comments = { italic = true },
        },
      }
    end,
  },
  ["marko-cerovac/material.nvim"] = {},
  ["Shatur/neovim-ayu"] = {},
  ["nyoom-engineering/oxocarbon.nvim"] = {},
  --  ╭───────────────╮
  --  │  themes end   │
  --  ╰───────────────╯

  ["abecodes/tabout.nvim"] = {
    event = "BufRead",
    wants = { "nvim-treesitter" },
    after = { "nvim-cmp" },
    config = function() require("tabout").setup(require "user.plugins.tabout") end,
  },

  --  ╭─────────────────────────────────────────────────────────────╮
  --  │ manages projects and also changes the neovim root directory │
  --  ╰─────────────────────────────────────────────────────────────╯
  ["ahmedkhalf/project.nvim"] = {
    after = "telescope.nvim",
    config = function() require("project_nvim").setup(require "user.plugins.project_nvim") end,
    -- activated in "user.plugins.telescope"
  },

  -- runs individual code files
  ["CRAG666/code_runner.nvim"] = {
    requires = { "nvim-lua/plenary.nvim" },
    -- after = { "toggleterm.nvim" },
    config = function() require("code_runner").setup(require "user.plugins.code_runner") end,
    cmd = { "RunCode", "RunFile", "RunProject", "RunClose", "CRFiletype", "CRProjects" },
  },

  -- stylize folds in neovim
  ["anuvyklack/pretty-fold.nvim"] = {
    -- event = "User isfolded",
    event = "BufRead",
    config = function() require("pretty-fold").setup(require "user.plugins.pretty-fold") end,
  },

  ["folke/todo-comments.nvim"] = {
    event = "BufRead",
    config = function() require("todo-comments").setup() end,
  },

  -- Virtual text context for functions and loops for neovim treesitter
  ["haringsrob/nvim_context_vt"] = {
    wants = { "nvim-treesitter" },
    config = function() require("nvim_context_vt").setup(require "user.plugins.nvim_context_vt") end,
    event = { "BufEnter" },
  },

  ["folke/zen-mode.nvim"] = {
    cmd = { "ZenMode" },
    config = function() require("zen-mode").setup() end,
  },

  -- view diagnostics
  ["folke/trouble.nvim"] = {
    cmd = "TroubleToggle",
  },

  ["LudoPinelli/comment-box.nvim"] = {
    cmd = {
      "CBcatalog",
      "Cblbox",
      "Cbclbox",
      "Cbccbox",
      "Cbalbox",
      "Cbaclbox",
      "Cbacbox",
      "Cbaccbox",
      "Cbline",
      "Cbcline",
    },
  },

  -- TODO: lazyload mkdir.nvim
  ["jghauser/mkdir.nvim"] = {
    -- event = "BufWriteCmd",
  },
  ["peterhoeg/vim-qml"] = {

    event = "BufRead",
    ft = { "qml" },
  },
}
