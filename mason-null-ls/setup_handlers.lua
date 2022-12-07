local null_ls = require("null-ls")

return {
    flake8 = function()
        null_ls.register(null_ls.builtins.diagnostics.flake8.with({
            extra_args = {
                "--max-line-length", "120",
                "--ignore", "E302 E305 W391 F401",
                -- expected 2 lines, blank line at end of file, imported but unused
            }
        }))
    end
}
