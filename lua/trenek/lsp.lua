local diagnosticConfig = function(virtual_lines)
    vim.diagnostic.config({
        virtual_lines = virtual_lines,
        virtual_text = not virtual_lines,
        signs = true,
        update_in_insert = true,
        underline = true,
        severity_sort = true
    })
end

diagnosticConfig(false)

local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end

vim.opt.completeopt = { 'menuone', 'noselect', 'popup' }
vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        local opts = { buffer = event.buf }
        local client = assert(vim.lsp.get_client_by_id(event.data.client_id))

        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', 'go', vim.lsp.buf.type_definition, opts)

        vim.keymap.set('n', 'gk', vim.lsp.buf.document_highlight, opts)
        vim.keymap.set('n', '<ESC>', vim.lsp.buf.clear_references, opts)

        -- gra - code actions
        -- grn - rename
        -- grr - references
        -- Ctr+S in insert mode = signature_help
        vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help, opts)
        vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)

        -- use ]d, [d, [D. ]D to jump between diagnostics
        vim.keymap.set('n', '<leader>d', vim.diagnostic.setqflist, opts)
        vim.keymap.set('n', '<leader>dd', vim.diagnostic.open_float, opts)
        vim.keymap.set('n', '<leader>ds', function() diagnosticConfig(true) end, opts)
        vim.keymap.set('n', '<leader>df', function() diagnosticConfig(false) end, opts)

        if client:supports_method('textDocument/completion') then
            client.server_capabilities.completionProvider.triggerCharacters = chars
            vim.lsp.completion.enable(true, client.id, event.buf, { autotrigger = true })

            -- + Tab and S-Tab
            vim.keymap.set('i', '<A-[>', function() vim.snippet.jump(-1) end, opts)
            vim.keymap.set('i', '<A-]>', function() vim.snippet.jump(1) end, opts)
        end
    end,
})
