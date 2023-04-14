-- set vim options here (vim.<first_key>.<second_key> = value)
return {
    opt = {
        -- set to true or false etc.
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to auto
        wrap = false, -- sets vim.opt.wrap
        tabstop = 4,
        softtabstop = 4,
        shiftwidth = 4,
        smarttab = true,
        expandtab = true,
        smartindent = true,
        swapfile = false,
        pumblend = 10, -- Make builtin completion menus slightly transparent
        winblend = 10, -- Make floating windows slightly transparent
        clipboard = "", -- Remove connection to the system clipboard
    },
    g = {
        mapleader = " ", -- sets vim.g.mapleader
    },
}
