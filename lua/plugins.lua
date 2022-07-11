local utils = require "utils"

return {
  { "neovim/nvim-lspconfig" },

  {
    "nvim-treesitter/nvim-treesitter",
    opt = true,
    config = function() utils.load_config "config.tree_sitter" end,
  },

  {
    "hrsh7th/nvim-cmp",
    opt = true,
    config = function() utils.load_config "config.cmp" end,
  },

  { "folke/tokyonight.nvim" },

  {
    "nvim-lualine/lualine.nvim",
    requires = {
      "kyazdani42/nvim-web-devicons",
      opt = true,
    },
    configt = function() utils.load_config "config.lualine" end,
  },

  {
    "folke/zen-mode.nvim",
    config = function() utils.load_config "config.zen_mode" end,
  },

  {
    "folke/twilight.nvim",
    config = function() utils.load_config "config.twilight" end,
  },

  {
    "hrsh7th/cmp-nvim-lsp",
    opt = true,
    require = "nvim-cmp",
  },

  {
    "hrsh7th/cmp-buffer",
    opt = true,
    require = "nvim-cmp",
  },

  {
    "hrsh7th/cmp-path",
    opt = true,
    require = "nvim-cmp",
  },

  {
    "hrsh7th/cmp-cmdline",
    opt = true,
    require = "nvim-cmp",
  },

  {
    "L3MON4D3/LuaSnip",
    opt = true,
  },

  {
    "saadparwaiz1/cmp_luasnip",
    opt = true,
    require = "luasnip",
  },
}
