return {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = ":call mkdp#util#install()",
    init = function()
        vim.api.nvim_exec(
            [[
                function! OpenMarkdownPreview(url)
                    execute "silent ! firefox --new-window " . a:url
                endfunction
            ]],
            true
        )
        vim.g.mkdp_browserfunc = "OpenMarkdownPreview"
        -- set to 1, nvim will open the preview window after entering the markdown buffer
        -- default: 0
        vim.g.mkdp_auto_start = 0
        -- set to 1, the nvim will auto close current preview window when change
        -- from markdown buffer to another buffer
        -- default: 1
        vim.g.mkdp_auto_close = 0
        -- recognized filetypes
        -- these filetypes will have MarkdownPreview... commands
        vim.g.mkdp_filetypes = { "markdown" }
        -- set default theme (dark or light)
        -- By default the theme is define according to the preferences of the system
        vim.g.mkdp_theme = "dark"
    end,
    keys = {
        { "<leader>m", ":MarkdownPreviewToggle<cr>", mode = { "n", "v" }, desc = "Toggle .md preview" },
    },
}
