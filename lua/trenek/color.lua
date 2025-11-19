local isTransparent = true

local changeTransparent = function()
    isTransparent = not isTransparent
    vim.cmd.colorscheme(vim.g.colors_name)
end

local toggleBackgroundColor = function()
    if (vim.opt.background:get() == 'light') then
        vim.opt.background = 'dark'
    else
        vim.opt.background = 'light'
    end
end

vim.api.nvim_create_autocmd('ColorScheme', {
    desc = 'Change Of Color',
    callback = function()
        if isTransparent then
            vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
            vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
        end
    end,
})

vim.keymap.set({ 'n', 'x' }, '<leader>ct', changeTransparent)
vim.keymap.set({ 'n', 'x' }, '<leader>cb', toggleBackgroundColor)

vim.cmd([[
    highlight CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
    highlight CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

    highlight MyError guifg=Red guibg=Yellow
    highlight MyWarning guifg=Blue

    highlight MyHighlight1 guibg=Red
    highlight MyHighlight2 guibg=Yellow
    highlight MyHighlight3 guibg=Blue
    highlight MyHighlight4 guibg=Green
    highlight MyHighlight5 guibg=Pink
    highlight MyHighlight6 guibg=Purple
]])

vim.keymap.set('n', '<leader>C',  '<cmd>set cursorline! cursorcolumn!<cr>', { silent = true })
vim.keymap.set('n', '<leader>0l', '<cmd>call clearmatches()<cr>')
vim.keymap.set('n', '<leader>1l', '<cmd>call matchaddpos("MyHighlight1", [line(".")])<cr>')
vim.keymap.set('n', '<leader>2l', '<cmd>call matchaddpos("MyHighlight2", [line(".")])<cr>')
vim.keymap.set('n', '<leader>3l', '<cmd>call matchaddpos("MyHighlight3", [line(".")])<cr>')
vim.keymap.set('n', '<leader>4l', '<cmd>call matchaddpos("MyHighlight4", [line(".")])<cr>')
vim.keymap.set('n', '<leader>5l', '<cmd>call matchaddpos("MyHighlight5", [line(".")])<cr>')
vim.keymap.set('n', '<leader>6l', '<cmd>call matchaddpos("MyHighlight6", [line(".")])<cr>')
