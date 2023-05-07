local hover_doc = {}
local line_diagnostic = {}

local lspsaga_avail, _ = pcall(require, "lspsaga")
if lspsaga_avail then
    hover_doc = { false, desc = "Hover symbol details" }
    line_diagnostic = { false, desc = "Hover diagnostics" }
end

return {
    n = {
        ["gd"] = { false, desc = "Definition" },
        ["gdd"] = {
            function() vim.lsp.buf.definition() end,
            desc = "Go to Definition",
        },
        ["gl"] = line_diagnostic,
        ["K"] = hover_doc,
    },
}
