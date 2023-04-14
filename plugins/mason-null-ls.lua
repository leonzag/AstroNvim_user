local null_ls = require "null-ls"

return {
    "jay-babu/mason-null-ls.nvim",
    opts = {
        ensure_installed = {
            "stylua",
            "jq",
            "prettierd",
            "shellcheck",
            "shfmt",
        },
        handlers = {
            flake8 = function()
                null_ls.register(null_ls.builtins.diagnostics.flake8.with {
                    extra_args = {
                        "--max-line-length",
                        "120",
                        "--ignore",
                        "E302 E305 W391 F401", -- expected 2 lines, blank line at end of file, imported but unused
                        "--extend-ignore",
                        "E203", -- for black-formatter compatibility
                    },
                })
            end,
            prettierd = function()
                require("null-ls").register(require("null-ls").builtins.formatting.prettierd.with {
                    condition = function(utils)
                        return utils.root_has_file "package.json"
                            or utils.root_has_file ".prettierrc"
                            or utils.root_has_file ".prettierrc.json"
                            or utils.root_has_file ".prettierrc.js"
                    end,
                })
            end,
            eslint_d = function()
                require("null-ls").register(require("null-ls").builtins.diagnostics.eslint_d.with {
                    condition = function(utils)
                        return utils.root_has_file "package.json"
                            or utils.root_has_file ".eslintrc.json"
                            or utils.root_has_file ".eslintrc.js"
                    end,
                })
            end,
        },
    },
}
