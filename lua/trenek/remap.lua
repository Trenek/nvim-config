vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>cd", "<cmd>:lcd %:h<cr>")

vim.keymap.set({"n", "i", "x"}, "<A-up>", ":move -2<cr>=<Down>")
vim.keymap.set({"n", "i", "x"}, "<A-down>", ":move +1<cr>=<Down>")
vim.keymap.set({"v"}, "<A-up>", ":move '<-2<cr>gv=gv")
vim.keymap.set({"v"}, "<A-down>", ":move '>+1<cr>gv=gv")

vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")

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
