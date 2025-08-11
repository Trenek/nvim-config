vim.pack.add({
    -- telescope
    { src = 'https://github.com/nvim-lua/plenary.nvim' },
    { src = 'https://github.com/nvim-telescope/telescope.nvim' },
    { src = 'https://github.com/nvim-telescope/telescope-file-browser.nvim' },

    -- kolorki
    { src = 'https://github.com/rose-pine/neovim', name = 'rose-pine-moon' },
    { src = 'https://github.com/morhetz/gruvbox' },
    { src = 'https://github.com/folke/tokyonight.nvim' },
    { src = 'https://github.com/xiyaowong/transparent.nvim' }, -- transparent

    -- file parser (i więcej kolorków!!!)
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'master' },

    -- some useful things
    { src = 'https://github.com/theprimeagen/harpoon' },
    { src = 'https://github.com/mbbill/undotree' },
    { src = 'https://github.com/tpope/vim-fugitive' }, -- Git integration
    { src = 'https://github.com/cdelledonne/vim-cmake' },

    -- mason
    { src = 'https://github.com/williamboman/mason.nvim' },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/williamboman/mason-lspconfig.nvim' },

    -- markdown
    { src = 'https://github.com/echasnovski/mini.nvim' },
    { src = 'https://github.com/MeanderingProgrammer/render-markdown.nvim' },

    -- latex
    { src = 'https://github.com/lervag/vimtex' },
    { src = 'https://github.com/let-def/texpresso.vim' },

    -- random
    { src = 'https://github.com/startup-nvim/startup.nvim' },
    { src = 'https://github.com/eandrju/cellular-automaton.nvim' },
    { src = 'https://github.com/registerGen/clock.nvim' },
})

vim.cmd('TSUpdate') -- treesitter

require('render-markdown').setup({}) -- markdown

-- random
require("startup").setup({ theme = "my_theme" })
require("clock").setup()
