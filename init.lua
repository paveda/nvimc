local impatient_ok, impatient = pcall(require, "impatient")

if impatient_ok then impatient.enable_profile() end

local sources = {
  "bootstrap",
  "lsp"
}

for _, src in ipairs(sources) do
  local src_ok, error = pcall(require, src)

  if not src_ok then
    vim.api.nvim_err_writeln(
      "Failed to load "
      .. src
      .. "\n\n"
      .. tostring(error)
    )
  end
end

vim.cmd[[colorscheme tokyonight]]