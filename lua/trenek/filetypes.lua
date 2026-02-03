vim.filetype.add({
    extension = {
        frag = 'frag',
        vert = 'vert',
    }
})

vim.filetype.add({
    filename = {
        [".bashrc.user"] = "bash",
    }
})

vim.treesitter.language.register('glsl', 'frag')
vim.treesitter.language.register('glsl', 'vert')
