vim.cmd.packadd('nvim.undotree')

vim.pack.add({
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

    { src = 'https://github.com/stevearc/dressing.nvim' }, -- ładne taski
    { src = 'https://github.com/akinsho/flutter-tools.nvim' },

    -- python
    { src = 'https://github.com/ajbucci/ipynb.nvim' },
    { src = 'https://github.com/folke/snacks.nvim' }, -- images
    { src = 'https://github.com/MeanderingProgrammer/render-markdown.nvim' },
})
