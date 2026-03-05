return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- Aquí puedes añadir nombres a los grupos de teclas
    spec = {
      { "<leader>f", group = "Formatear" },
      { "<leader>d", group = "Debugger" },
      { "<leader>x", group = "Errores (Trouble)" },
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Ver todos los atajos",
    },
  },
}
