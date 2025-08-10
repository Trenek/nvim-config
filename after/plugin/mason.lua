local lspconfig = require("lspconfig")

require("mason").setup()
require("mason-lspconfig").setup({
    -- You'll find a list of language servers here:
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
    ensure_installed = {
        -- LSP
        "clangd",
        "lua_ls",
        "cmake",
        "glsl_analyzer",
    },
    handlers = {
        function(server_name) -- default handler (optional) 
            lspconfig[server_name].setup({})
        end,

        ["clangd"] = function()
            lspconfig.clangd.setup({
                cmd = {
                    "clangd",
                    "--clang-tidy",
--                  "--cross-file-rename",
                    "-header-insertion=never",
                },
            })
        end,
    }
})
