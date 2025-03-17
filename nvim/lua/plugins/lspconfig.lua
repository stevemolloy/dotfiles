return {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").clangd.setup{}
        require("lspconfig").c3_lsp.setup{}
    end
}

