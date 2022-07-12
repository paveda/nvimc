local status_ok, result = pcall(require, "nvim-lsp-installer")

if not status_ok then
  local error = result
  local error_message = "Error occured while require nvim-lsp-installer" .. "\n\n" .. error.message
  vim.api.nvim_err_writeln(error_message)
end

local lsp_installer = result
local lsp_installer_config = require "lsp.lsp-installer.config"

lsp_installer.setup(lsp_installer_config)