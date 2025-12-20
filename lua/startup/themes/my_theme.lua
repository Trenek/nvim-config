require('startup.themes.banners')
require('startup.themes.quotes')

return {
    -- every line should be same width without escaped \
    header = {
        type = 'text',
        oldfiles_directory = false,
        align = 'center',
        fold_section = false,
        title = 'Header',
        margin = 5,
        content = GetBanner(),
        highlight = 'Statement',
        default_color = '#00FF00',
        oldfiles_amount = 0,
    },
    -- name which will be displayed and command
    body = {
        type = 'mapping',
        oldfiles_directory = false,
        align = 'center',
        fold_section = false,
        title = 'Basic Commands',
        margin = 5,
        content = {
            { ' Find File', 'Telescope find_files', '<leader>tf' },
            { '󰍉 Find Word', 'Telescope live_grep', '<leader>tg' },
            { ' Recent Files', 'Telescope oldfiles', '<leader>to' },
            { ' File Browser', 'Telescope file_browser', '<leader>tb' },
            { ' Colorschemes', 'Telescope colorscheme', '<leader>tc' },
            { ' New File', 'lua require"startup".new_file()', '<leader>nf' },
            { ' Settings', 'lua vim.cmd.tabnew("Settings") vim.cmd.Ex(vim.fn.stdpath("config"))', 's' },
            { '󰙴 Edit theme', 'lua vim.cmd.tabnew("Settings") vim.cmd.e(vim.fn.stdpath("config") .. "/lua/startup/themes/my_theme.lua")', 't' },
        },
        highlight = 'String',
        default_color = '',
        oldfiles_amount = 0,
    },
    footer = {
        type = 'text',
        oldfiles_directory = false,
        align = 'center',
        fold_section = false,
        title = 'Footer',
        margin = 5,
        content = GetQuote(),
        highlight = 'Number',
        default_color = '',
        oldfiles_amount = 0,
    },
    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = { 1, 3, 3, 0 },
    },
    mappings = {
        execute_command = '<CR>',
        open_file = 'o',
        open_file_split = '<c-o>',
        open_section = '<TAB>',
        open_help = '?',
    },
    colors = {
        background = '#1f2227',
        folded_section = '#56b6c2',
    },
    parts = { 'header', 'body', 'footer' },
}
