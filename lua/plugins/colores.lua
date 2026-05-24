return {
  -- Instalar Kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      --  vim.cmd.colorscheme "kanagawa-dragon"
    end
  },

  -- Instalar Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("gruvbox").setup({ contrast = "soft" })
    end
  },

  -- Instalar Catppuccin (Configurado como predeterminado)
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        integrations = { treesitter = true },
      })
      -- Este es el que se cargará al iniciar
      -- vim.cmd.colorscheme "catppuccin-mocha"
    end
  },
  {
    "ayu-theme/ayu-vim",
    lazy = false,
    priority = 1000,
    config = function()
      -- "light", "mirage", "dark"
      -- vim.g.ayucolor = "dark"

      --vim.cmd("colorscheme ayu")
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      vim.cmd("colorscheme rose-pine")
    end
  }

}
