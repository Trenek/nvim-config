local treesitter = require('nvim-treesitter')

local not_installed = function(ensure)
    local alreadyInstalled = treesitter.get_installed('parsers')

    return vim.iter(ensure)
        :filter(function(parser)
                return not vim.tbl_contains(alreadyInstalled, parser)
            end)
        :totable()
end

treesitter.install(not_installed({
    'c',
    'cpp',
    'lua',
    'vim',
    'vimdoc',
    'markdown',
    'java',
    'glsl'
}))

vim.api.nvim_create_autocmd('FileType', {
    callback = function()
        local ft = vim.bo.filetype
        local lang = vim.treesitter.language.get_lang(ft)

        if vim.tbl_contains(treesitter.get_available(), lang) then
            if next(not_installed({ lang })) ~= nil then
                treesitter.install({ lang }):wait()
            end

            vim.treesitter.start()
        end
    end,
})

vim.filetype.add({
    extension = {
        frag = 'frag',
        vert = 'vert',
        prolog = 'prolog',
    }
})

vim.treesitter.language.register('glsl', 'frag')
vim.treesitter.language.register('glsl', 'vert')
vim.treesitter.language.register('prolog', 'prolog')
