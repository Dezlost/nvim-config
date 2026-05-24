return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local lenguajes = { "rust", "javascript", "zig", "python", "typescript", "tsx", "html", "css","prisma","http" }
		require("nvim-treesitter").install(lenguajes)
		vim.api.nvim_create_autocmd("FileType", {
			pattern = lenguajes,
			callback = function()
				vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
