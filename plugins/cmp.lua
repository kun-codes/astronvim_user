local cmp = require "cmp"
local luasnip = require "luasnip"

return {
  mapping = {

    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
  },
  -- from: https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance#how-to-get-types-on-the-left-and-offset-the-menu
  -- window = {
  --   completion = {
  --     winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
  --     col_offset = -3,
  --     side_padding = 0,
  --   },
  -- },

  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      local kind = require("lspkind").cmp_format { mode = "symbol_text", maxwidth = 50 } (entry, vim_item)
      local strings = vim.split(kind.kind, "%s", { trimempty = true })
      kind.kind = " " .. (strings[1] or "") .. " "
      kind.menu = "    (" .. (strings[2] or "") .. ")"
      return kind
    end,
  },
}

-- local cmp = require "cmp"
-- local luasnip = require "luasnip"
-- return {
--   mapping = {
--     ["<Tab>"] = cmp.mapping(function(fallback)
--       if luasnip.jumpable(1) then
--         luasnip.jump(1)
--       else
--         fallback()
--       end
--     end, { "i", "s" }),
--     ["<S-Tab>"] = cmp.mapping(function(fallback)
--       if luasnip.jumpable(-1) then
--         luasnip.jump(-1)
--       else
--         fallback()
--       end
--     end, { "i", "s" }),
--   },
-- }
