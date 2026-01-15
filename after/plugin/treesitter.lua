local treesitter = require('nvim-treesitter')

treesitter.install({
    'c',
    'cpp',
    'lua',
    'vim',
    'vimdoc',
    'markdown',
    'gitcommit'
})

vim.api.nvim_create_autocmd('FileType', {
    callback = function()
        local ft = vim.bo.filetype
        local lang = vim.treesitter.language.get_lang(ft)

        if vim.tbl_contains(treesitter.get_available(), lang) then
            treesitter.install({ lang }):wait(10000)

            vim.treesitter.start()
        end
    end
})
