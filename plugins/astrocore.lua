-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
      signs = true,
      virtual_lines = false,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "auto", -- sets vim.opt.signcolumn to yes
        wrap = true, -- sets vim.opt.wrap
        foldenable = false,
        foldexpr = "nvim_treesitter#foldexpr() ",
        foldmethod = "expr",
        foldlevel = 20,
        guifont = "ComicCodeLigatures Nerd Font:h12",
        shell = "/usr/bin/fish",
        background = "dark",
        breakindent = true,
        clipboard = "",
        winblend = 20,
        pumblend = 20,
        mouse = "",
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
        mapleader = " ", -- sets vim.g.mapleader
        autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
        cmp_enabled = true, -- enable completion at start
        autopairs_enabled = true, -- enable autopairs at start
        diagnostics_enabled = true, -- enable diagnostics at start
        status_diagnostics_enabled = true, -- enable diagnostics in statusline
        icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
        ui_notifications_enabled = true, -- disable notifications when toggling UI elements
        heirline_bufferline = true, -- enable new heirline based bufferline (requires :PackerSync after changing)
        material_style = "deep ocean",
        neovide_cursor_vfx_mode = "railgun",
        neovide_cursor_vfx_particle_lifetime = 2,
        neovide_hide_mouse_when_typing = true,
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
        --  ╭──────────────────────────────────────────────────────────────────────────────╮
        --  │                   mappings seen under group name "Buffer"                    │
        --  ╰──────────────────────────────────────────────────────────────────────────────╯
        -- ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
        -- ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
        -- ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
        -- ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },

        --  ╭──────────────────────────────────────────────────────────────────────────────╮
        --  │                               mappings on root                               │
        --  ╰──────────────────────────────────────────────────────────────────────────────╯
        ["<leader>z"] = { "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode" },
        ["<leader>r"] = { "<cmd>RunFile<cr>", desc = "Run File" },
        ["<leader>v"] = { "<cmd>Telescope neoclip<cr>", desc = "Clipboard" },
        -- ["<leader>y"] = { '"+y', desc = "copy" },

        --  ╭──────────────────────────────────────────────────────────╮
        --  │        mappings seen under group name "Packages"         │
        --  ╰──────────────────────────────────────────────────────────╯
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
        L = {
          function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
          desc = "Next buffer",
        },
        H = {
          function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
          desc = "Previous buffer",
        },
        ["<leader>c"] = {
          function()
            local bufs = vim.fn.getbufinfo { buflisted = true }
            require("astronvim.utils.buffer").close(0)
            if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then
              require("alpha").start(true)
            end
          end,
          desc = "Close buffer",
        },
      },
    },
  },
}
