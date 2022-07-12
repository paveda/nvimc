local utils = require "utils"

return {
  -- Libs
  { "nvim-lua/plenary.nvim" },

  -- LSP
  { "neovim/nvim-lspconfig" },
  { "williamboman/nvim-lsp-installer" },
  { "jose-elias-alvarez/null-ls.nvim" },

  -- Completion
  {
    "hrsh7th/nvim-cmp",
    config = function() utils.load_config "config.cmp" end,
    opt = true,
  },

  { "hrsh7th/cmp-nvim-lsp", opt = true },
  { "hrsh7th/cmp-buffer", opt = true },
  { "hrsh7th/cmp-path", opt = true },
  { "hrsh7th/cmp-cmdline", opt = true },
  {
    "saadparwaiz1/cmp_luasnip",
    require = "luasnip",
    opt = true,
  },
  { "L3MON4D3/LuaSnip", opt = true },

  -- UI
  { "folke/tokyonight.nvim" },

  {
    "nvim-treesitter/nvim-treesitter",
    opt = true,
    config = function() utils.load_config "config.tree_sitter" end,
  },

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

}
