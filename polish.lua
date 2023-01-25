return {

  -- https://github.com/nvim-telescope/telescope.nvim/issues/699#issuecomment-1159637962
  -- so that folding works when a file is opened from telescope plugin
  vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = { "*" },
    command = "normal zx",
  }),

  -- does the same as the above autocommand but after saving the file
  vim.api.nvim_create_autocmd({ "bufwritepost" }, {
    pattern = { "*" },
    command = "normal zx",
  }),

  -- from: https://astronvim.com/Recipes/alpha
  -- opens alpha automatically when no more buffers are there
  function()
    local function alpha_on_bye(cmd)
      local bufs = vim.fn.getbufinfo { buflisted = true }
      vim.cmd(cmd)
      if require("core.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
    end

    vim.keymap.del("n", "<leader>c")
    if require("core.utils").is_available "bufdelete.nvim" then
      vim.keymap.set("n", "<leader>c", function() alpha_on_bye "Bdelete!" end, { desc = "Close buffer" })
    else
      vim.keymap.set("n", "<leader>c", function() alpha_on_bye "bdelete!" end, { desc = "Close buffer" })
    end
  end,
}
