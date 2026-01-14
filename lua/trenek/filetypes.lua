vim.filetype.add({
    extension = {
        asm = 'nasm', -- simple fix for nasm
        ifx = 'c', -- baseband
    },
    filename = {
        [".bashrc.user"] = "bash",
    }
})

vim.lsp.enable('clangd')
vim.lsp.enable('erlangls')
