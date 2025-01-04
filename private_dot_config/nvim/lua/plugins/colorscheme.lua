return {
  -- add gruvbox
  { "RRethy/base16-nvim"  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "base16-tomorrow-night-eighties",
    },
  },

  -- Configure Lualine to load base16
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      theme = "base16",
    },
  }
}
