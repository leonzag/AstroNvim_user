-- You can disable default plugins as follows:
return {
    ["ellisonleao/gruvbox.nvim"] = {
        config = require("user.plugins.gruvbox"),
    },
    -- ["goolord/alpha-nvim"] = { disable = true },
    --
    -- -- You can also add new plugins here as well:
    -- -- Add plugins, the packer syntax without the "use"
    -- { "andweeb/presence.nvim" },
    -- {
    --     "ray-x/lsp_signature.nvim",
    --     event = "BufRead",
    --     config = function() require("lsp_signature").setup() end,
    -- },
    --
    -- -- We also support a key value style plugin definition similar to NvChad:
    -- ["ray-x/lsp_signature.nvim"] = {
    --     event = "BufRead",
    --     config = function() require("lsp_signature").setup() end,
    -- },
}
