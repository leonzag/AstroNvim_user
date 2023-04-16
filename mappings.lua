local buf = require "astronvim.utils.buffer"
local buf_cursor = function() return vim.v.count > 0 and vim.v.count or 1 end

local function next_buf() buf.nav(buf_cursor()) end
local function prev_buf() buf.nav(-buf_cursor()) end
local function mv_buf_right() buf.move(buf_cursor()) end
local function mv_buf_left() buf.move(-buf_cursor()) end

return {
    i = {
        ["<A-k>"] = { "<esc>:m .-2<cr>==gi", desc = "Move line up" },
        ["<A-j>"] = { "<esc>:m .+1<cr>==gi", desc = "Move line down" },
        ["<A-l>"] = { "<esc>v>i", desc = "Move line right" },
        ["<A-h>"] = { "<esc>v<i", desc = "Move line left" },
    },
    n = {
        ["gy"] = { '"+y', desc = "Copy to system clipboard" },
        ["gp"] = { '"+p', desc = "Paste from system clipboard" },
        ["<leader>c"] = {
            function() -- StartPage if no more tabs
                local bufs = vim.fn.getbufinfo { buflisted = true }
                buf.close(0)
                if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then
                    require("alpha").start(true)
                end
            end,
            desc = "Close buffer",
        },
        -- increment|decrement
        ["+"] = { "<C-a>", desc = "Inc num" },
        ["-"] = { "<C-x>", desc = "Dec num" },
        -- buffer next|prev
        ["<A-.>"] = { next_buf, desc = "Next Buf" },
        ["<A-,>"] = { prev_buf, desc = "Prev Buf" },
        ["<A-]>"] = { mv_buf_right, desc = "Move Buf right" },
        ["<A-[>"] = { mv_buf_left, desc = "Move Buf left" },
        -- go to start|end line
        ["<S-l>"] = { "$hl", desc = "To end line" },
        ["<S-h>"] = { "0", desc = "To start line" },
    },
    v = {
        ["gy"] = { '"+y', desc = "Copy to system clipboard" },
        ["gp"] = { '"+p', desc = "Paste from system clipboard" },
        -- increment|decrement
        ["+"] = { "<C-a>", desc = "Inc num" },
        ["-"] = { "<C-x>", desc = "Dec num" },
        -- buffer next|prev
        ["<A-.>"] = { next_buf, desc = "Next Buf" },
        ["<A-,>"] = { prev_buf, desc = "Prev Buf" },
        ["<A-]>"] = { mv_buf_right, desc = "Move Buf right" },
        ["<A-[>"] = { mv_buf_left, desc = "Move Buf left" },
        -- go to start|end line
        ["<S-l>"] = { "$hl", desc = "To end line" },
        ["<S-h>"] = { "0", desc = "To start line" },
    },
}
