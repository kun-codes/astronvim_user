return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true, -- sets vim.opt.number
    spell = false, -- sets vim.opt.spell
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
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
  g = {
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
}
