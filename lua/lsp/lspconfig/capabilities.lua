local status_ok, result = pcall(require, "cmp_nvim_lsp")
if not status_ok then
  vim.api.nvim_err_writeln('Cmp-nvim-lsp not loaded')
  return
end

local cmp_nvim_lsp = result

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = cmp_nvim_lsp.update_capabilities(capabilities)

return capabilities
