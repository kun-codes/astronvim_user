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
  {
    "catppuccin/nvim",
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
}
