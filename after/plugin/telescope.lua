local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup({
    pickers = {
        colorscheme = {
            enable_preview = true
        }
    }
})

vim.keymap.set('n', '<leader>tc', builtin.colorscheme, { desc = 'Telescope colorschemes' })
vim.keymap.set('n', '<leader>tf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>tg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>ts', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = 'Some Grep' })

vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find git files' })
