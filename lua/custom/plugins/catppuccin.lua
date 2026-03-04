-- catppuccin.lua
-- This file configures the Catppuccin theme for Neovim using Lazy.nvim.

return {
  'catppuccin/nvim', -- The official Catppuccin theme repository
  name = 'catppuccin', -- Plugin name
  lazy = false, -- Load the theme immediately
  priority = 1000, -- Ensure the theme is loaded before other plugins
  config = function()
    -- Import Catppuccin module and setup with custom options
    require('catppuccin').setup {
      flavour = 'mocha', -- Choose your preferred flavor: latte, frappe, macchiato, mocha
      transparent_background = false, -- Disable transparent background
      term_colors = true, -- Enable terminal colors
      integrations = {
        treesitter = true, -- Enable Treesitter integration
        lsp_trouble = true, -- Enable LSP Trouble integration
        cmp = true, -- Enable nvim-cmp integration
        gitsigns = true, -- Enable GitSigns integration
        telescope = true, -- Enable Telescope integration
        nvimtree = true, -- Enable NvimTree integration
        dashboard = true, -- Enable Dashboard integration
        bufferline = true, -- Enable Bufferline integration
        markdown = true, -- Enable Markdown support
        which_key = true, -- Enable WhichKey integration
      },
    }

    -- Apply the Catppuccin theme
    vim.cmd.colorscheme 'catppuccin'
  end,
}
