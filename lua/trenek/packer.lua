-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                          , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- kolorki
    use ({
        'rose-pine/neovim',
	    as = 'rose-pine-moon',
	    config = function()
	        vim.cmd('colorscheme rose-pine-moon')
	    end
    })
    use ({
        "folke/tokyonight.nvim",
        config = function()
            vim.cmd('colorscheme tokyonight')
        end
    })

    -- file parser (i więcej kolorków!!!)
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')

    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive') -- Git integration

    -- lsp
    use {
        'VonHeikemen/lsp-zero.nvim',
	    requires = {
            -- LSP Support
	        { 'neovim/nvim-lspconfig' },
	        {
                'williamboman/mason.nvim',
                requires = {
                    { 'williamboman/mason-lspconfig.nvim' },
                    { 'mfussenegger/nvim-dap' },
                    { 'jay-babu/mason-nvim-dap.nvim' }
                }
            },

	        -- Autocompletion
	        { 'hrsh7th/nvim-cmp' },
	        { 'hrsh7th/cmp-buffer' },
	        { 'hrsh7th/cmp-path' },
	        { 'saadparwaiz1/cmp_luasnip' },
	        { 'hrsh7th/cmp-nvim-lsp' },
	        { 'hrsh7th/cmp-nvim-lua' },

	        -- Snippets
	        { 'L3MON4D3/LuaSnip' },
	        { 'rafamadriz/friendly-snippets' },
	    }
    }

    use('cdelledonne/vim-cmake')

    use {
        "startup-nvim/startup.nvim",
        requires = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-file-browser.nvim"
        },
        config = function()
             require("startup").setup({ theme = "my_theme" })
        end
    }
    use('eandrju/cellular-automaton.nvim')

    use('xiyaowong/transparent.nvim')

    use {
        'glepnir/nerdicons.nvim',
        cmd = 'NerdIcons',
        config = function()
            require('nerdicons').setup({})
        end
    }
    use({
        'MeanderingProgrammer/render-markdown.nvim',
        after = { 'nvim-treesitter' },
        requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suite
        -- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
        -- requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
        config = function()
            require('render-markdown').setup({})
        end,
    })

    use('morhetz/gruvbox')

    use('lervag/vimtex')
    use('let-def/texpresso.vim')
    use('registerGen/clock.nvim')
end)

