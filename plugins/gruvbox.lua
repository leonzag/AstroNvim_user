local bg = "#232323"
local fg = "#ebdbb2"

return {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    init = function()
        vim.cmd([[colorscheme gruvbox]])
        vim.o.background = "dark"
    end,
    priority = 1000,
    opts = {
        inverse = false,
        overrides = {
            NormalFloat = { bg = bg },
            Float = { bg = bg },
            SignColumn = { bg = "none" },
            CursorLineNr = { bg = "none" },
            GruvboxYellowSign = { bg = "none" },
            GruvboxPurpleSign = { bg = "none" },
            GruvboxOrangeSign = { bg = "none" },
            GruvboxGreenSign = { bg = "none" },
            GruvboxBlueSign = { bg = "none" },
            GruvboxAquaSign = { bg = "none" },
            GruvboxRedSign = { bg = "none" },
            StatusLine = { fg = fg, bg = bg },
            TroubleNormal = { fg = fg, bg = "none" },
        },
    },
}
