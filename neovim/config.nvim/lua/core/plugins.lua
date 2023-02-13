
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Git command integration
  use 'tpope/vim-fugitive'
  use 'kdheepak/lazygit.nvim' -- Lazygit :/

  -- Smooth code commenting
  use 'terrortylor/nvim-comment'

  -- Vim buffer management
  use 'theprimeagen/harpoon'

  -- vim-tmux-navigator
  use 'christoomey/vim-tmux-navigator'

  -- Color theme
  use 'ellisonleao/gruvbox.nvim'
  use 'tomasr/molokai'
  use 'tanvirtin/monokai.nvim'
  use 'sainnhe/everforest'

  -- Replacement for Nerdtree + icons
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  -- Beautiful status line
  use 'nvim-lualine/lualine.nvim'

  -- Treesitter for syntax highlighting and vim-elixir for autoindenting
  use 'elixir-editors/vim-elixir' -- Use vim-elixir for autoindenting but not syntax highlighting
  use 'nvim-treesitter/nvim-treesitter' -- Use treesitter for syntax highlighting but not autoindenting
  -- use 'tpope/vim-endwise'
  -- use 'folke/which-key.nvim'
  -- require('which-key').setup({})

  -- LSP CONFIGURATION --
  use {
    -- Main LSP plugin allowing easy config of LSP servers
    'neovim/nvim-lspconfig',

    requires = {
      -- LSP package manager for LSP servers
      'williamboman/mason.nvim',
      -- Bridges mason with nvim-lspconfig
      'williamboman/mason-lspconfig',
      -- Additional lua configuration, makes nvim stuff amazing
      -- 'folke/neodev.nvim',
    }
  }

  -- Completion framework
  use {
    'hrsh7th/nvim-cmp',

    requires = {
      'hrsh7th/cmp-nvim-lsp', -- Completion source for nvims builtin language server client
      'hrsh7th/cmp-nvim-lua',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'onsails/lspkind.nvim',
      'aca/emmet-ls', -- HTML Snippets - https://docs.emmet.io/cheat-sheet/
      -- https://github.com/rafamadriz/friendly-snippets/blob/main/snippets/elixir.json
      -- https://github.com/rafamadriz/friendly-snippets/blob/main/snippets/eelixir.json
      'rafamadriz/friendly-snippets',
    }
  }

  -- Get this debug adapter (DAP) setup for Elixir since nvim-lspconfig doesn't support Elixir DAP
  -- use 'mfussenegger/nvim-dap'

  use {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'BurntSushi/ripgrep' },
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
      { 'sharkdp/fd' },
    }
  }

  -- Automatically set up configs after cloning packer.nvim
  if packer_bootstrap then
    require('packer').sync()
  end
end)
