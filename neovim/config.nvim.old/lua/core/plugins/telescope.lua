return {
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'BurntSushi/ripgrep' },
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      { 'sharkdp/fd' },
    },
  },
}

