return {
  -- LSP CONFIGURATION --
  {
    -- Main LSP plugin allowing easy config of LSP servers
    'neovim/nvim-lspconfig',

    dependencies = {
      -- LSP package manager for LSP servers
      'williamboman/mason.nvim',
      -- Bridges mason with nvim-lspconfig
      'williamboman/mason-lspconfig',
      -- Additional lua configuration, makes nvim stuff amazing
      -- 'folke/neodev.nvim',
    }
  },
}
