require("unzippants.util")
local lspconfig = require "lspconfig"

local servers = {
    tsserver = {},
    angularls = {},
    gopls = {},
    texlab = {},
    ["null-ls"] = {},
}

require("unzippants.null-ls").setup()

for name, opts in pairs(servers) do
    if type(opts) == "function" then
        opts()
    else
        local client = lspconfig[name]
        client.setup(vim.tbl_extend("force", {
            flags = { debounce_text_changes = 150 },
            on_attach = Util.lsp_on_attach,
            on_init = Util.lsp_on_init,
        }, opts))
    end
end
