return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function ()
    local alpha = require('alpha')
    local dashboard = require('alpha.themes.dashboard')

    -- Logo ASCII personalizado que dice "DEZ"
    dashboard.section.header.val = {
        [[                                      ]],
        [[      ██████╗  ███████╗ ███████╗      ]],
        [[      ██╔══██╗ ██╔════╝ ╚══███╔╝      ]],
        [[      ██║  ██║ █████╗     ███╔╝       ]],
        [[      ██║  ██║ ██╔══╝    ███╔╝        ]],
        [[      ██████╔╝ ███████╗ ███████╗      ]],
        [[      ╚═════╝  ╚══════╝ ╚══════╝      ]],
        [[                                      ]],
        [[            Bienvenido, DeZ           ]],
    }

    -- Los botones y los comandos
    dashboard.section.buttons.val = {
        dashboard.button("n", "  Nuevo archivo", ":enew<CR>"),
        dashboard.button("ff", "󰈞  Buscar archivo", ":Telescope find_files <CR>"),
        dashboard.button("fg", "󰊄  Buscar texto", ":Telescope live_grep <CR>"),
        dashboard.button("r", "󰄉  Recientes", ":Telescope oldfiles <CR>"),
        dashboard.button("c", "  Configuración", ":e $MYVIMRC <CR>"),
        dashboard.button("q", "󰅚  Salir", ":qa <CR>"),
    }

    -- Ajuste de colores (opcional)
    -- Esto hace que el logo DEZ tenga un color azulado/cyan 
    -- si usas un tema oscuro, se verá genial.
    dashboard.section.header.opts.hl = "Keyword"
    dashboard.section.footer.opts.hl = "Type"

    alpha.setup(dashboard.opts)
  end
}
