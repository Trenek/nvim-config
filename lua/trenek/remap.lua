vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<leader>cd', '<cmd>:lcd %:h<cr>')

vim.keymap.set({'n', 'i', 'x'}, '<A-up>', ':move -2<cr>=<Down>')
vim.keymap.set({'n', 'i', 'x'}, '<A-down>', ':move +1<cr>=<Down>')
vim.keymap.set('v', '<A-up>', ":move '<-2<cr>gv=gv")
vim.keymap.set('v', '<A-down>', ":move '>+1<cr>gv=gv")

vim.g.clipboard = 'osc52'
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

vim.keymap.set({'n', 'v'}, '<leader>d', '"_d')

if vim.version().minor >= 12 then
  vim.keymap.set('n', '<leader>pu', vim.pack.update)
  vim.keymap.set('n', '<leader>u', vim.cmd.Undotree)
else
  vim.keymap.set('n', '<leader>pu', "<cmd>DepsUpdateOffline<cr>")
  vim.keymap.set('n', '<leader>u', "<cmd>lua require('undotree').toggle()<cr>")
end

vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'qf' },
    callback = function(event)
        local opts = { buffer = event.buf, silent = true }

        vim.keymap.set('n', '<cr>', "<cmd>.cc<cr>", opts)
    end
})
