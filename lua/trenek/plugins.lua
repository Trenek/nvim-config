local vim_pack_add
if vim.version().minor >= 12 then
    vim_pack_add = vim.pack.add
else
    local path_package = vim.fn.stdpath('data') .. '/site/'
    local mini_path = path_package .. 'pack/deps/start/mini.nvim'

    if not vim.loop.fs_stat(mini_path) then
        vim.cmd('echo "Installing `mini.nvim`" | redraw')
        vim.fn.system({
            'git', 'clone', '--filter=blob:none',
            'https://github.com/nvim-mini/mini.nvim', mini_path
        })
        vim.cmd('packadd mini.nvim | helptags ALL')
        vim.cmd('echo "Installed `mini.nvim`" | redraw')
    end

    local MiniDeps = require('mini.deps')

    MiniDeps.setup({ path = { package = path_package } })

    vim_pack_add = function(l)
        for _, x in ipairs(l) do
            MiniDeps.add({ source = x["src"] })
        end
    end
end

vim_pack_add({
    -- undotree
    { src = 'https://github.com/jiaoshijie/undotree' },
    -- telescope
    { src = 'https://github.com/nvim-lua/plenary.nvim' },
    { src = 'https://github.com/nvim-telescope/telescope.nvim' },
    { src = 'https://github.com/nvim-telescope/telescope-file-browser.nvim' },

    -- kolorki
    { src = 'https://github.com/rose-pine/neovim', name = 'rose-pine-moon' },
    { src = 'https://github.com/morhetz/gruvbox' },
    { src = 'https://github.com/folke/tokyonight.nvim' },
    { src = 'https://github.com/Rigellute/shades-of-purple.vim' },

    -- pobieracze
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter' }, -- treesitter parsers
    { src = 'https://github.com/mason-org/mason.nvim' }, -- everything
    { src = 'https://github.com/neovim/nvim-lspconfig' }, -- lsp default configs
    { src = 'https://github.com/mason-org/mason-lspconfig.nvim' }, -- auto-enabling mason's lsps

    -- some useful things
    { src = 'https://github.com/theprimeagen/harpoon' },
    { src = 'https://github.com/tpope/vim-fugitive' }, -- Git integration
    { src = 'https://github.com/Shatur/neovim-tasks' }, -- Building Tool

    -- latex
    { src = 'https://github.com/lervag/vimtex' },

    -- ikonki
    { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
    { src = 'https://github.com/nvim-mini/mini.icons' },

    -- random
    { src = 'https://github.com/goolord/alpha-nvim' },
    { src = 'https://github.com/eandrju/cellular-automaton.nvim' },
    { src = 'https://github.com/folke/which-key.nvim' },
    -- { src = 'https://github.com/dstein64/vim-startuptime' },
})
