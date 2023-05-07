local function has_words_before()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match "%s" == nil
end

local function user_opts(_, opts)
    -- opts parameter is the default options table
    -- the function is lazy loaded so cmp is able to be required
    local cmp = require "cmp"
    local snip_status_ok, luasnip = pcall(require, "luasnip")

    if not snip_status_ok then return opts end

    -- modify the mapping part of the table
    opts.mapping["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.select_next_item()
        elseif has_words_before() then
            cmp.complete()
        else
            fallback()
        end
    end, { "i", "s" })

    opts.mapping["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.select_prev_item()
        elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
        else
            fallback()
        end
    end, { "i", "s" })

    opts.mapping["<C-l>"] = cmp.mapping(function()
        if luasnip.jumpable(1) then luasnip.jump(1) end
    end, { "i", "s" })

    opts.mapping["<C-h>"] = cmp.mapping(function()
        if luasnip.jumpable(-1) then luasnip.jump(-1) end
    end, { "i", "s" })

    return opts
end

local function user_config(plugin, opts)
    local cmp = require "cmp"
    -- run cmp setup
    cmp.setup(opts)
    -- configure `cmp-cmdline` as described in their repo: https://github.com/hrsh7th/cmp-cmdline#setup
    cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
            { name = "buffer" },
        },
    })
    cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
            { name = "path" },
        }, {
            {
                name = "cmdline",
                option = {
                    ignore_cmds = { "Man", "!" },
                },
            },
        }),
    })
end

return {
    "hrsh7th/nvim-cmp",
    keys = { ":", "/", "?" },  -- lazy load cmp on more keys along with insert mode
    dependencies = {
        "hrsh7th/cmp-cmdline", -- add cmp-cmdline as dependency of cmp
    },
    opts = user_opts,          -- override the options table that is used in the `require("cmp").setup()` call
    config = user_config,
}
