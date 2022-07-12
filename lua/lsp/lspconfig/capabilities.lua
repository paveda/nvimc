local status_ok, result = pcall(require, "cmp_nvim_lsp")

if not status_ok then
  local error = result
  local error_message = "Error occured while require cmp_nvim_lsp"
    .. "\n\n"
    .. error.message
  vim.api.nvim_err_writeln(error_message)
end

local cmp_nvim_lsp = result

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
-- TODO fix module loading
capabilities = cmp_nvim_lsp.update_capabilities(capabilities)

return capabilities
