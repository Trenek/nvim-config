if vim.g.starter then
    local MiniStarter = require('mini.starter')

    require('startup.themes.minify')
    require('startup.themes.banners')
    require('startup.themes.quotes')

    local function content_unit(string, type, hl, extra)
        return vim.tbl_extend('force', { string = string, type = type, hl = hl }, extra or {})
    end

    local function createPadding(width, win_id, horiz_coef)
        local min_right_space = vim.api.nvim_win_get_width(win_id) - width
        local left = math.max(math.floor(horiz_coef * min_right_space), 0)
        return string.rep(' ', left)
    end

    local function aligning(horizontal, vertical)
        horizontal = horizontal or 'left'
        vertical = vertical or 'top'

        local horiz_coef = ({ left = 0, center = 0.5, right = 1.0 })[horizontal]
        local vert_coef = ({ top = 0, center = 0.5, bottom = 1.0 })[vertical]

        return function(content, buf_id)
            local win_id = vim.fn.bufwinid(buf_id)
            if win_id < 0 then return end

            local line_strings = MiniStarter.content_to_lines(content)
            local first = -1

            for i, line in ipairs(content) do
                local is_empty_line = #line == 0 or (#line == 1 and line[1].string == '')

                if not is_empty_line then
                    if line[1].string == '░ ' then
                        if first == -1 then first = i end
                    else
                        if first ~= -1 then
                            local max_width = 0

                            for var = first, i - 2 do
                                max_width = math.max(vim.fn.strdisplaywidth(content[var][2].string) + 2, max_width)
                            end

                            local left_pad = createPadding(max_width, win_id, horiz_coef)
                            for var = first, i - 2 do
                                table.insert(content[var], 1, content_unit(left_pad, 'empty', nil))
                            end

                            first = -1
                        end

                        local lines_width = vim.fn.strdisplaywidth(line[1].string)
                        local left_pad = createPadding(lines_width, win_id, horiz_coef)

                        table.insert(line, 1, content_unit(left_pad, 'empty', nil))
                    end
                end
            end

            -- Align vertically
            local bottom_space = vim.api.nvim_win_get_height(win_id) - #line_strings
            local top_pad = math.max(math.floor(vert_coef * bottom_space), 0)

            return MiniStarter.gen_hook.padding(0, top_pad)(content)
        end
    end

    require('mini.starter').setup({
        autoopen = true,
        evaluate_single = false,

        header = Minify(GetBanner()),
        footer = Minify(GetQuote()),

        query_updaters = 'abcdefghijklmnopqrstuvwxyz0123456789_-.',
        silent = false,

        items = {
            {
                name = ' Find File',
                action = 'Telescope find_files',
                section = 'Browser'
            },
            {
                name = '󰍉 Find Word',
                action = 'Telescope live_grep',
                section = 'Browser'
            },
            {
                name = ' Recent Files',
                action = 'Telescope oldfiles',
                section = 'Browser'
            },
            {
                name = ' File Browser',
                action = 'Telescope file_browser',
                section = 'Browser'
            },
            {
                name = ' Colorschemes',
                action = 'Telescope colorscheme',
                section = 'Browser'
            },
            {
                name = ' New File',
                action = 'lua require"startup".new_file()',
                section = 'Browser'
            },
            {
                name = ' Explore',
                action = 'lua vim.cmd.tabnew("Explore") vim.cmd.Ex()',
                section = 'Browser'
            },
            {
                name = ' Settings',
                action = 'lua vim.cmd.tabnew("Settings") vim.cmd.Ex(vim.fn.stdpath("config"))',
                section = 'Settings'
            },
            {
                name = '󰙴 Edit theme',
                action = 'lua vim.cmd.tabnew("Settings") vim.cmd.e(vim.fn.stdpath("config") .. "/after/plugin/startup.lua")',
                section = 'Settings'
            },
        },

        content_hooks = {
            MiniStarter.gen_hook.adding_bullet(),
            MiniStarter.gen_hook.indexing('all', { 'Builtin actions' }),
            aligning('center', 'center'),
        },
    })
end
