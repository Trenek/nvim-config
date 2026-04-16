vim.filetype.add({
    extension = {
        asm = 'nasm', -- simple fix for nasm
        vert = 'glsl',
        frag = 'glsl',
        tesc = 'glsl',
        tese = 'glsl',
        geom = 'glsl',
        comp = 'glsl',
    },
    filename = {
        [".bashrc.user"] = "bash",
    }
})

vim.lsp.enable('hls')
