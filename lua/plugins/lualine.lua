return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        -- Nota: Asegúrate de tener instalado el plugin 'catppuccin/nvim' 
        -- El nombre correcto suele ser 'catppuccin'
        theme = 'auto', 
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        globalstatus = true, -- Mantiene una sola barra al final si usas splits
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {{'filename', path = 1}}, -- 'path = 1' muestra la ruta relativa
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
    })
  end
}
