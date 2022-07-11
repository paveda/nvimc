local M = {}

---@param req string
M.load_config = function (req)
  local config_ok, config_or_error = pcall(require, req)

  if not config_ok then
    local message = "Error while load config for " .. req .. '\n\n' .. config_or_error.message

    vim.api.nvim_err_writeln(message)
  else
    return config_or_error
  end
end

return M