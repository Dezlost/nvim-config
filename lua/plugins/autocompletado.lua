return {
	-- Cierra (), {}, [], "", etc. automáticamente
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- Configuración básica
	},
	-- Comenta líneas con 'gcc' o bloques con 'gc'
	{
		"numToStr/Comment.nvim",
		opts = {},
	},
}
