local impatient_ok, impatient = pcall(require, "impatient")

if impatient_ok then impatient.enable_profile() end

local sources = {
  "plugins",
  "bootstrap",
}

for _, src in ipairs(sources) do
  local src_ok, fault = pcall(require, src)

  if not src_ok then
    vim.api.nvim_err_writeln("Failed to load " .. src .. "\n\n" .. fault)
  end
end

vim.cmd[[colorscheme tokyonight]]