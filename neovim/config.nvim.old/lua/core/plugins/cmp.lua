return {
  -- Completion framework
  {
    'hrsh7th/nvim-cmp',

    dependencies = {
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
  },
}

