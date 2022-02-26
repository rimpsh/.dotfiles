local lspconfig = require "lspconfig"
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local servers = {
    tsserver = {},
    gopls = {},
}

for name, opts in pairs(servers) do
    if type(opts) == "function" then
        opts()
    else
        local client = lspconfig[name]
        client.setup(vim.tbl_extend("force", {
            capabilities = capabilities,
        }, opts))
    end
end
