local status_ok, result = pcall(require, "nvim-lsp-installer")
if not status_ok then return end

local lsp_installer = result
local lsp_installer_config = require "lsp.lsp-installer.config"

lsp_installer.setup(lsp_installer_config)