require("mason").setup()
require("mason-lspconfig").setup({
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
    ensure_installed = {
        "clangd",
        "lua_ls",
        "cmake",
        "glsl_analyzer",
    },
})
