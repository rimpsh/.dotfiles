local M = {}

M.setup = function()
    local null_ls = require "null-ls"
    local b = null_ls.builtins

    vim.env.PRETTIERD_DEFAULT_CONFIG = vim.fn.stdpath "config" .. "/.prettierrc"

    null_ls.config {
        debounce = 150,
        sources = {
            b.diagnostics.eslint.with {
                command = "eslint_d",
            },
            --b.formatting.stylua.with {
            --    args = {
            --        "--config-path",
            --        vim.fn.stdpath "config" .. "/stylua.toml",
            --        "-",
            --    },
            --},
            b.formatting.gofmt.with {
            },
            b.formatting.prettier.with {
                filetypes = {
                    "typescriptreact",
                    "typescript",
                    "javascriptreact",
                    "javascript",
                    "json",
                    "jsonc",
                    "css",
                    "html",
                    "yaml",
                    "markdown",
                },
            },
        },
    }
end

return M
