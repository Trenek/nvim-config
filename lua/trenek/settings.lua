-- line numbers
vim.o.number = true
vim.o.relativenumber = false

-- tabs
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- line breaks
vim.o.wrap = true
vim.o.linebreak = true
vim.o.breakindent = true
vim.o.showbreak = "ͱ"

vim.o.pumborder = 'rounded'

-- undo tree does backups instead of vim
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = vim.fn.stdpath('data') .. '/undodir'
vim.o.undofile = true

vim.o.termguicolors = true

vim.o.signcolumn = 'yes'

-- turn off providers
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

-- ui2
require('vim._core.ui2').enable({
    enable = true,
    msg = {
        targets = {
            [''] = 'cmd',
            empty = 'cmd',
            bufwrite = 'cmd',
            confirm = 'cmd',
            emsg = 'cmd',
            echo = 'cmd',
            echomsg = 'cmd',
            echoerr = 'cmd',
            completion = 'cmd',
            list_cmd = 'cmd',
            lua_error = 'cmd',
            lua_print = 'cmd',
            progress = 'cmd',
            rpc_error = 'cmd',
            quickfix = 'cmd',
            search_cmd = 'cmd',
            search_count = 'cmd',
            shell_cmd = 'cmd',
            shell_err = 'cmd',
            shell_out = 'cmd',
            shell_ret = 'cmd',
            undo = 'cmd',
            verbose = 'cmd',
            wildlist = 'cmd',
            wmsg = 'cmd',
            typed_cmd = 'cmd',
        },
        cmd = {
            height = 0.5,
        },
        dialog = {
            height = 0.5,
        },
        msg = {
            height = 0.3,
            timeout = 5000,
        },
        pager = {
            height = 0.5,
        },
    }
})
