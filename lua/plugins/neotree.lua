return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      window = {
        position = "float", -- <--- Aquí es donde se vuelve flotante
        mappings = {
          ["<space>"] = "none", -- Desactiva el espacio dentro del árbol para que no choque con tu leader
        },
      },
      filesystem = {
        filtered_items = {
          visible = true, -- Muestra archivos ocultos como .gitignore
        },
      },
    })

    -- Atajo para abrirlo y cerrarlo
    vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'Abrir Explorador Flotante' })
  end
}
