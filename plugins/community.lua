-- local prefix_refactoring = "<leader>r"

return {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.pack.typescript" },
    { import = "astrocommunity.diagnostics.trouble-nvim" },
    {
        "folke/trouble.nvim",
        keys = {
            { "gL", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics (Trouble)" },
        },
    },
    { import = "astrocommunity.editing-support.todo-comments-nvim" },
    {
        "todo-comments.nvim",
        opts = {
            keywords = {
                FIX = {
                    alt = { "FIXME", "BUG", "FIXIT", "ISSUE", "ERROR", "ERR" },
                },
            },
        },
        keys = {
            { "]t",         function() require("todo-comments").jump_next() end, desc = "Next todo comment" },
            { "[t",         function() require("todo-comments").jump_prev() end, desc = "Prev todo comment" },
            { "<leader>fT", "<cmd>TodoTelescope<cr>",                            desc = "Search Todos" },
        },
    },
    { import = "astrocommunity.scrolling.satellite-nvim" },
    { import = "astrocommunity.editing-support.neogen" },
    { import = "astrocommunity.indent.indent-tools-nvim" },
    { import = "astrocommunity.motion.portal-nvim" },
    {
        "portal.nvim",
        keys = {
            { "<A-o>", "<cmd>Portal jumplist backward<cr>", desc = "Portal Jump backward" },
            { "<A-i>", "<cmd>Portal jumplist forward<cr>",  desc = "Portal Jump forward" },
        },
    },
    { import = "astrocommunity.editing-support.nvim-ts-rainbow2" },
}
