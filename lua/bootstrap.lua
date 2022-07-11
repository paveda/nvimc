local packer_ok, packer = pcall(require, 'packer')
local plugins_ok, plugins = pcall(require, 'plugins')

if not packer_ok then
    vim.api.nvim_err_writeln('Packer error ' .. packer.message)
end

if not plugins_ok then
    vim.api.nvim_err_writeln('Error while load plugins' .. plugins.message)
end


return packer.startup(function(use)
    for _, plugin in ipairs(plugins) do
        use(plugin)
    end
end)