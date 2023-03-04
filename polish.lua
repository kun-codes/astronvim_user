return {
  -- -- https://github.com/nvim-telescope/telescope.nvim/issues/699#issuecomment-1159637962
  -- -- so that folding works when a file is opened from telescope plugin
  -- vim.api.nvim_create_autocmd({ "BufEnter" }, {
  --   pattern = { "*" },
  --   command = "normal zx",
  -- }),
  --
  -- -- does the same as the above autocommand but after saving the file
  -- vim.api.nvim_create_autocmd({ "bufwritepost" }, {
  --   pattern = { "*" },
  --   command = "normal zx",
  -- }),
}
