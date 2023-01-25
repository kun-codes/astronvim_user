local utils = require "core.utils"
local plugins_count = vim.fn.len(vim.fn.globpath(vim.fn.stdpath "data" .. "/site/pack/packer/start", "*", 0, 1))
    + vim.fn.len(vim.fn.globpath(vim.fn.stdpath "data" .. "/site/pack/packer/opt", "*", 0, 1))
local plugins_loaded = vim.fn.len(vim.fn.globpath(vim.fn.stdpath "data" .. "/site/pack/packer/start", "*", 0, 1))
return {
    layout = {
        { type = "padding", val = 2 },
        {
            type = "text",
            val = utils.user_plugin_opts("header", {}, false),
            opts = { position = "center", hl = "DashboardHeader" },
        },
        { type = "padding", val = 2 },
        {
            type = "group",
            val = {
                astronvim.alpha_button("LDR f f", "  Find File  "),
                astronvim.alpha_button("LDR f o", "  Recents  "),
                astronvim.alpha_button("LDR f w", "  Find Word  "),
                astronvim.alpha_button("LDR f p", "  Projects  "),
                astronvim.alpha_button("LDR f n", "  New File  "),
                astronvim.alpha_button("LDR S l", "  Last Session  "),
                -- utils.alpha_button("", "Edit Config"),
            },
            opts = { spacing = 1 },
        },
        {
            type = "text",
            val = {
                " Your Mom has loaded " .. plugins_loaded .. " and has " .. plugins_count .. " plugins ",
            },
            opts = { position = "center", hl = "DashboardFooter" },
        },
    },
}

-- return function(config)
--     table.insert(config.layout[5].val, 5, {
--
--         type = "text",
--         val = {
--             " AmogUs loaded " .. plugins_loaded .. " and has " .. plugins_count .. " plugins ",
--         },
--         opts = { position = "center", hl = "DashboardFooter" },
--     })
--
--     return config
-- end
