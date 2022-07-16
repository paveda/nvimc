return {
  -- Libs
  { "nvim-lua/plenary.nvim" },

  -- LSP
  { "neovim/nvim-lspconfig" },
  { "williamboman/nvim-lsp-installer" },
  { "jose-elias-alvarez/null-ls.nvim" },

  -- Completion
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },

  {
    "hrsh7th/nvim-cmp",
    config = require "config.cmp",
  },

  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },

  -- UI
  { "folke/tokyonight.nvim" },

  {
    "nvim-treesitter/nvim-treesitter",
    config = require "config.tree_sitter",
  },

  {
    "nvim-lualine/lualine.nvim",
    requires = {
      "kyazdani42/nvim-web-devicons",
      opt = true,
    },
    configt = require "config.lualine",
  },

  {
    "folke/zen-mode.nvim",
    config = require "config.zen_mode",
  },

  {
    "folke/twilight.nvim",
    config = require "config.twilight",
  },

}
