local status_ok, packer = pcall(require, "packer")

local function install_packer()
  local fn = vim.fn

  local install_path = fn.stdpath "data"
    .. "/site/pack/packer/start/packer.nvim"

  if fn.empty(fn.glob(install_path)) > 0 then
    vim.fn.system {
      "git",
      "clone",
      "--depth",
      "1",
      "https://github.com/wbthomason/packer.nvim",
      install_path,
    }

    vim.cmd [[qa]]
  end
end

if not status_ok then install_packer() end

local plugins = require "plugins"

return packer.startup(function(use)
  for _, plugin in ipairs(plugins) do
    use(plugin)
  end
end)
