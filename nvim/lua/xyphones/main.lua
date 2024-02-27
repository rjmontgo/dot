local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  'rebelot/kanagawa.nvim',
  'ellisonleao/gruvbox.nvim',
  'williamboman/mason.nvim',
  'olrtg/nvim-emmet',
  'jose-elias-alvarez/null-ls.nvim',

  'L3MON4D3/LuaSnip',

  'nvim-treesitter/nvim-treesitter',
  'nvim-treesitter/playground',

  'neovim/nvim-lspconfig',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',

  'tpope/vim-fugitive',
  {
    "michaelb/sniprun",
    branch = "master",

    build = "sh install.sh",
    -- do 'sh install.sh 1' if you want to force compile locally
    -- (instead of fetching a binary from the github release). Requires Rust >= 1.65

    config = function()
      require("sniprun").setup({
        -- your options
      })
    end,
  },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
  },

  {
    'ThePrimeagen/harpoon',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
  },
})
