---@type LazySpec
return {

  "yashguptaz/calvera-dark.nvim",
  {
    "folke/tokyonight.nvim",
    opts = {
      styles = {
        comments = { italic = true },
      },
    },
  },
  "marko-cerovac/material.nvim",
  "Shatur/neovim-ayu",
  "rebelot/kanagawa.nvim",
  "nyoom-engineering/oxocarbon.nvim",
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      integrations = {
        nvimtree = false,
        aerial = true,
        dap = { enabled = true, enable_ui = true },
        mason = true,
        neotree = true,
        notify = true,
        sandwich = true,
        semantic_tokens = true,
        symbols_outline = true,
        telescope = true,
        which_key = true,
      },
    },
  },
  "mhartington/oceanic-next",
  "Mofiqul/vscode.nvim",
  "martinsione/darkplus.nvim",
  {
    "ramojus/mellifluous.nvim",
    dependencies = { "rktjmp/lush.nvim" },
  },
  "gbprod/nord.nvim",
  -- Using lazy.nvim
  {
    "ribru17/bamboo.nvim",
    -- lazy = false,
    -- priority = 1000,
  },
  { "Everblush/nvim", name = "everblush" },
  { "shaunsingh/moonlight.nvim" },
  { "yonlu/omni.vim" },
  -- { "Everblush/nvim", name = "everblush" },
  { "dasupradyumna/midnight.nvim" },
  { "navarasu/onedark.nvim" },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = true,
    config = function()
      require("cyberdream").setup {
        -- Recommended - see "Configuring" below for more config options
        transparent = true,
        italic_comments = true,
        hide_fillchars = true,
        borderless_telescope = true,
      }
    end,
  },
  -- { "shaunsingh/nord.nvim" },
}
