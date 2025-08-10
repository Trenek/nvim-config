local anim = require('cellular-automaton')

anim.register_animation({
    fps = 300,
    name = 'slide',
    update = function (grid)
        for i = 1, #grid do
            local prev = grid[i][#(grid[i])]
            for j = 1, #(grid[i]) do
                grid[i][j], prev = prev, grid[i][j]
            end
        end
        return true
    end
})

anim.register_animation({
    fps = 15,
    name = "vslide",
    update = function (grid)
        for i = 1, (#grid / 2) - 1 do
            grid[i], grid[i + 1] = grid[i + 1], grid[i]
        end
        for i = 0, (#grid / 2) - 2 do
            grid[#grid - i], grid[#grid - i - 1] = grid[#grid - i - 1], grid[#grid - i]
        end
        return true
    end
})

vim.keymap.set("n", "<leader>rain", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>life", "<cmd>CellularAutomaton game_of_life<CR>")
vim.keymap.set("n", "<leader>slide", "<cmd>CellularAutomaton slide<CR>")
vim.keymap.set("n", "<leader>vslide", "<cmd>CellularAutomaton vslide<CR>")
