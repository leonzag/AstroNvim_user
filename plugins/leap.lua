return {
    "ggandor/flit.nvim",
    keys = function()
        ---@type LazyKeys[]
        local ret = {}
        for _, key in ipairs { "f", "F", "t", "T" } do
            ret[#ret + 1] = { key, mode = { "n", "x", "o" }, desc = key }
        end
        return ret
    end,
    opts = { labeled_modes = "nx" },
    dependencies = {
        "ggandor/leap.nvim",
        config = function(_, opts)
            vim.api.nvim_set_hl(0, "LeapBackdrop", { link = "Comment" })
        end,
        dependencies = {
            "tpope/vim-repeat",
        },
    },
}
