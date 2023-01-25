-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    --  ╭──────────────────────────────────────────────────────────────────────────────╮
    --  │                   mappings seen under group name "Buffer"                    │
    --  ╰──────────────────────────────────────────────────────────────────────────────╯
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },

    --  ╭──────────────────────────────────────────────────────────────────────────────╮
    --  │                               mappings on root                               │
    --  ╰──────────────────────────────────────────────────────────────────────────────╯
    ["<leader>z"] = { "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode" },
    ["<leader>r"] = { "<cmd>RunFile<cr>", desc = "Run File" },

    --  ╭──────────────────────────────────────────────────────────╮
    --  │        mappings seen under group name "Packages"         │
    --  ╰──────────────────────────────────────────────────────────╯
    ["<leader>pr"] = { "<cmd>AstroReload<cr>", desc = "AstroNvim Reload" },
    ["<leader>pm"] = { "<cmd>Mason<cr>", desc = "Open Mason" },
    ["<leader>pe"] = { "<cmd>e ~/.config/nvim/lua/user/<cr>", desc = "Edit config" },

    --  ╭──────────────────────────────────────────────────────────╮
    --  │           mappings seen under group name "LSP"           │
    --  ╰──────────────────────────────────────────────────────────╯
    ["<leader>lt"] = { "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" },
    ["<leader>lc"] = { "<cmd>TodoTrouble<cr>", desc = "Todo Trouble" },
    ["<leader>lC"] = { "<cmd>TodoTelescope<cr>", desc = "Todo Telescope" },
    ["<leader>ll"] = { "<cmd>lua require('lsp_lines').toggle<cr>", desc = "Toggle lsp_lines" },

    -- ╭──────────────────────────────────────────────────────────────────────────────╮
    -- │                    mappings seen under group name "File"                     │
    -- ╰──────────────────────────────────────────────────────────────────────────────╯
    ["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Search projects" },

    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
