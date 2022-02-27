local lspconfig = require "lspconfig"
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local servers = {
    tsserver = {},
    gopls = {},
}

-- loop over lsp servers
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

-- copy paste from: https://github.com/neovim/nvim-lspconfig/issues/115#issuecomment-902680058
function org_imports(wait_ms)
  local params = vim.lsp.util.make_range_params()
  params.context = {only = {"source.organizeImports"}}
  local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
  for _, res in pairs(result or {}) do
    for _, r in pairs(res.result or {}) do
      if r.edit then
        vim.lsp.util.apply_workspace_edit(r.edit, "utf-16")
      else
        vim.lsp.buf.execute_command(r.command)
      end
    end
  end
end

-- run within .go files
vim.cmd [[
augroup GO_LSP
	autocmd!
	autocmd BufWritePre *.go :silent! lua vim.lsp.buf.formatting()
	autocmd BufWritePre *.go :silent! lua org_imports(3000)
augroup END
]]
