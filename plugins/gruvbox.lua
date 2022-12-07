local bg = "#232323"
local fg = "#ebdbb2"
return require("gruvbox").setup({
    overrides = {
        NormalFloat = {bg=bg},
        Float = {bg=bg},
        SignColumn = {bg = "none"},
        CursorLineNr = {bg = "none"},
        GruvboxYellowSign = {bg = "none"},
        GruvboxPurpleSign = {bg = "none"},
        GruvboxOrangeSign = {bg = "none"},
        GruvboxGreenSign = {bg = "none"},
        GruvboxBlueSign = {bg = "none"},
        GruvboxAquaSign = {bg = "none"},
        GruvboxRedSign = {bg = "none"},
        StatusLine = {fg = fg, bg = bg},
    },
})
