return {
  {
    'nvim-treesitter/nvim-treesitter', -- Use treesitter for syntax highlighting but not autoindenting
    build = ":TSUpdate",
    config = function ()
      local configs = require('nvim-treesitter.configs')
      configs.setup {
        ensure_installed = { "elixir", "heex", "eex", "vim", "lua", "html", "svelte", "typescript" },
        highlight = {
          enable = true,
        },
        indent = {
          enable = false,
        },
      }
    end,
  },
}

