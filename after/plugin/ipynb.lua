require("ipynb").setup({
    images = {
        enabled = true,
        cache_dir = vim.fn.stdpath("cache") .. "/ipynb.nvim",
        max_width = nil,
        max_height = nil,
    }
})
