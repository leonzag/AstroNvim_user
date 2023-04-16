return {
    "akinsho/toggleterm.nvim",
    init = function()
        function _G.set_terminal_keymaps()
            local opts = { buffer = 0 }
            vim.keymap.set("t", "<C-w>", [[<C-\><C-w>]], opts)
            vim.keymap.set("t", "<C-l>", [[<C-\><C-l>]], opts)
        end

        -- if you only want these mappings for toggle term use term://*toggleterm#* instead
        vim.cmd "autocmd! TermOpen term://* lua set_terminal_keymaps()"
    end,
    keys = {
        { "<A-;>", "<cmd>ToggleTerm<cr>", mode = { "i", "n", "v", "t" }, desc = "ToggleTerm" },
        { "<A-h>", "<Left>",              mode = { "t" },                desc = "Left" },
        { "<A-j>", "<Down>",              mode = { "t" },                desc = "Down" },
        { "<A-k>", "<Up>",                mode = { "t" },                desc = "Up" },
        { "<A-l>", "<Right>",             mode = { "t" },                desc = "Right" },
    },
    opts = {
        highlights = {
            Normal = {
                guibg = "#232323",
            },
            NormalFloat = {
                link = "NormalFloat",
            },
            FloatBorder = {
                guifg = "#928374",
                guibg = "#282828",
            },
        },
        shading_factor = -20,
        float_opts = {
            winblend = 20,
            border = "shadow",
        },
    },
}
