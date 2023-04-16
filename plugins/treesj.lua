return {
    "Wansmer/treesj",
    keys = {
        { "gs", "<CMD>TSJToggle<CR>", desc = "Toggle TreesJoin" },
        { "J",  "<CMD>TSJToggle<CR>", desc = "Toggle TreesJoin" },
        { "J",  "<CMD>TSJToggle<CR>", mode = { "v" },           desc = "Toggle TreesJoin" },
    },
    cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
    opts = { use_default_keymaps = false },
}
