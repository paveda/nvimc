local status_ok, result = pcall(require, "lspconfig")

if not status_ok then
  local error = result
  local error_message = "Error occured while require lspconfig"
    .. "\n\n"
    .. error.message
  vim.api.nvim_err_writeln(error_message)
end

local lspconfig = result

local on_attach = require "lsp.lspconfig.on-attach"
local capabilities = require "lsp.lspconfig.capabilities"

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = {
  "clangd",
  "rust_analyzer",
  "pyright",
  "tsserver",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = capabilities,
    on_attach = on_attach,
    lsp_flags = lsp_flags,
  }
end
