return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  config = function()
    require("transparent").setup({
      -- Grupos estándar que queremos transparentes
      groups = {
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String',
        'Function', 'Conditional', 'Repeat', 'Operator', 'Structure',
        'LineNr', 'NonText', 'SignColumn', 'CursorLine', 'CursorLineNr',
        'StatusLine', 'StatusLineNC', 'EndOfBuffer',
      },
      -- Aquí viene la magia para Snacks y ventanas flotantes modernas
      extra_groups = {
        "NormalFloat", -- Fondo de ventanas flotantes genéricas
        "FloatBorder", -- Bordes de ventanas flotantes

        -- Grupos específicos de Snacks.nvim
        "SnacksPicker",       -- El fondo del buscador/picker de Snacks
        "SnacksPickerBorder", -- El borde del picker
        "SnacksNormal",       -- Fondos generales de Snacks
        "SnacksWin",          -- Ventanas flotantes de Snacks (inputs, etc.)
        "SnacksBackdrop",     -- El fondo atenuado que pone detrás de los menús
        "Blink"
      },
    })
  end
}
