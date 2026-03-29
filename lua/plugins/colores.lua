return {
  -- Instalar Kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
       vim.cmd.colorscheme "kanagawa-dragon"
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
    "uhs-robert/oasis.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("oasis").setup({
        -- Aquí puedes elegir el estilo: 'sol' (rojo), 'canyon' (naranja), 'night' (oscuro)
        theme = "sol",
      })
      -- vim.cmd("colorscheme oasis-night") -- O "oasis-night" si prefieres el oscuro
    end,
  },
}
