return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = {
            "c",
            "cpp",
            "cmake",
            "rust",
            "python",
            "javascript",
            "typescript",
            "tsx",
            "json",
            "jsonc",
            "yaml",
            "toml",
            "html",
            "css",
            "lua",
            "luap",
            "vim",
            "vimdoc",
            "markdown",
            "markdown_inline",
            "bash",
            "query",
        },
        highlight = {
            enable = true,
            disable = function(lang, buf) -- disable slow TS-highlight for large files
                local max_filesize = 100 * 1024 -- 100 KB
                local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                if ok and stats and stats.size > max_filesize then return true end
            end,
        },
        incremental_selection = { enable = true },
        indent = {
            enable = true,
            disable = {
                "html",
            },
        },
        autotag = { enable = true },
        context_commentstring = { enable = true, enable_autocmd = false },
        rainbow = {
            enable = true,
            disable = { "html" },
            query = {html = ""},
        },
    },
}
