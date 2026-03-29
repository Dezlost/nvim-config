-- [[ CONFIGURACIÓN GENERAL ]]
vim.opt.number = true             -- Muestra el número de línea real
vim.opt.relativenumber = true     -- Números relativos para saltos rápidos
vim.opt.mouse = 'a'               -- Soporte para mouse completo
vim.opt.clipboard = "unnamedplus" -- Sincronización con el portapapeles (Wayland/wl-clipboard)
vim.opt.termguicolors = true      -- Colores reales para temas modernos
vim.opt.cursorline = true         -- Resalta la línea actual
vim.opt.signcolumn = "yes"        -- Siempre muestra la columna de iconos a la izquierda
vim.opt.fillchars = { eob = " " }

-- Keymaps para moverme entre splits
vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-j>', '<C-w>j')
vim.keymap.set('n', '<A-k>', '<C-w>k')
vim.keymap.set('n', '<A-l>', '<C-w>l')

-- [[ INDENTACIÓN ]]
vim.opt.expandtab = true -- Espacios > Tabs
vim.opt.tabstop = 2      -- Ancho visual del tab
vim.opt.softtabstop = 2  -- Ancho del tab al insertar
vim.opt.shiftwidth = 2   -- Ancho de la indentación automática
vim.opt_local.smartindent = true

-- [[ BÚSQUEDA ]] (Te recomiendo mucho estas dos)
vim.opt.ignorecase = true -- No importa mayúsculas/minúsculas al buscar
vim.opt.smartcase = true  -- Si pones una mayúscula, se vuelve estricto

vim.diagnostic.config({
  virtual_text = true
})
require("config.lazy")

vim.keymap.set("n", "<leader>th", function()
  require('snacks.picker').colorscheme({
    enable_preview = true,
    ignore_builtins = true     -- <--- Esta es la clave
  })
end, { desc = "Mis temas favoritos" })

-- Atajo para formatear con Conform
vim.keymap.set("n", "<leader>f", function()
  require("conform").format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  })
end, { desc = "Formatear archivo (Manual)" })

-- Colores para TSX (Solución permanente)
local function fix_tsx_colors()
  local groups = {
    "@tag.tsx",
    "@tag.builtin.tsx",
    "@tag.delimiter.tsx",
    "tsxIntrinsicTagName",
    "tsxTagName",
  }
  for _, group in ipairs(groups) do
    -- Lo vinculamos a 'Tag', que suele ser verde o rojo en casi todos los temas
    vim.api.nvim_set_hl(0, group, { link = "Tag" })
  end
end

-- Ejecutarlo ahora y cada vez que cambies de esquema de colores
fix_tsx_colors()
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = fix_tsx_colors,
})

-- Mapeo para que la ñ cierre la terminal desde adentro
vim.keymap.set('t', 'ñ', [[<C-\><C-n><cmd>lua Snacks.terminal.toggle()<CR>]], { desc = "Cerrar terminal con ñ" })
