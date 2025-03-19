local cmp_lsp = require("cmp_nvim_lsp")
local capabilities = vim.tbl_deep_extend(
    "force",
    {},
    vim.lsp.protocol.make_client_capabilities(),
    cmp_lsp.default_capabilities()
)

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
        "jdtls",
        "elixirls",
        "erlangls",
        "texlab",
    },
    handlers = {
        function(server_name) -- default handler (optional) 
            lspconfig[server_name].setup({
                capabilities = capabilities
            })
        end,

        zls = function()
            lspconfig.zls.setup({
                root_dir = lspconfig.util.root_pattern(".git", "build.zig", "zls.json"),
                settings = {
                    zls = {
                        enable_inlay_hints = true,
                        enable_snippets = true,
                        warn_style = true,
                    },
                },
            })
            vim.g.zig_fmt_parse_errors = 0
            vim.g.zig_fmt_autosave = 0

        end,
        ["clangd"] = function()
            lspconfig.clangd.setup({
                cmd = {
                    "clangd",
                    "--clang-tidy",
--                  "--cross-file-rename"
                }
            })
        end,
        ["lua_ls"] = function()
            lspconfig.lua_ls.setup({
                on_init = function(client)
                    if client.workspace_folders then
                        local path = client.workspace_folders[1].name
                        if path ~= vim.fn.stdpath('config') and (vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc')) then
                            return
                        end
                    end

                    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                        runtime = {
                            version = 'LuaJIT'
                        },
                        workspace = {
                            checkThirdParty = false,
                            library = {
                                vim.env.VIMRUNTIME
                            }
                        }
                    })
                end,
                capabilities = capabilities,
                settings = {
                    Lua = {
                        runtime = { version = "Lua 5.1" },
                        diagnostics = {
                            globals = { "bit", "vim", "it", "describe", "before_each", "after_each" },
                        }
                    }
                }
            })
        end,
    }
})
require("mason-nvim-dap").setup({
    ensure_installed = {
        "codelldb"
    },
    handlers = {
        function(config)
            -- all sources with no handler get passed here

            -- Keep original functionality
            require('mason-nvim-dap').default_setup(config)
        end,
    }
})
