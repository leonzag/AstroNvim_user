return {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
        { "<A-e>", "<esc><cmd>Neotree toggle<cr>", mode = { "n", "v" }, desc = "Toggle Explorer" },
    },
    opts = {
        filesystem = {
            filtered_items = {
                always_show = { ".github", ".gitignore", ".config", ".local", ".zsh" },
            },
        },
    },
}
