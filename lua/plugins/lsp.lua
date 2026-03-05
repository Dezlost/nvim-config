return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable({"ts_ls","cssls","tailwindcss","html","pyright","lua_ls","jsonls","prisma"})
    end
}
