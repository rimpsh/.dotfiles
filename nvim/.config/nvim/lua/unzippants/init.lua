local augroup = vim.api.nvim_create_augroup

require("unzippants.plugins")
require("unzippants.telescope")
require("unzippants.lsp")
require("unzippants.refactor")
require("unzippants.statusline")
require("unzippants.lsptrouble")
require("unzippants.treesitter")
require("unzippants.treesitter-context")
require("unzippants.neo-tree")
require("unzippants.luasnip")
require("unzippants.nvim-cmp")
require("unzippants.todo-comments")
require("unzippants.quickfix")
require("unzippants.neogit")

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})
