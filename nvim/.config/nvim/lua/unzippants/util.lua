_G.Util = {}

Util.lsp_on_init = function(client)
    vim.notify("Language Server Client started!", "info", {
        title = client.name,
    })
end

Util.lsp_on_attach = function(client)
    if client.name == "tsserver" then
        client.resolved_capabilities.document_formatting = false
        local ts_utils = require "nvim-lsp-ts-utils"
        ts_utils.setup{
            enable_import_on_completion = true,
        }
        ts_utils.setup_client(client)
    end

    if client.name == "gopls" then
        client.resolved_capabilities.document_formatting = false
    end

    if client.resolved_capabilities.document_formatting then
        vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
end

return Util
