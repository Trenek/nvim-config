local isTransparent = true

local changeTransparent = function()
    isTransparent = not isTransparent
    vim.cmd.colorscheme(vim.g.colors_name)
end

local toggleBackgroundColor = function()
    if (vim.opt.background:get() == "light") then
        vim.opt.background = "dark"
    else
        vim.opt.background = "light"
    end
end

local colors = {
    'rose-pine',
    'zaibatsu',
    'tokyonight-night',
    'gruvbox'
}

vim.api.nvim_create_autocmd('ColorScheme', {
    desc = 'Change Of Color',
    callback = function()
        if isTransparent then
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
    end,
})

vim.keymap.set({ 'n', 'x' }, '<leader>ct', changeTransparent)
vim.keymap.set({ 'n', 'x' }, '<leader>cb', toggleBackgroundColor)

vim.cmd.colorscheme(colors[3])
