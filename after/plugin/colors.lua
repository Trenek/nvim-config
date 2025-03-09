function Color(theme, color)
    color = color or theme
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

--Color("rose-pine")
--Color("zaibatsu")
Color("tokyonight-night")
--Color("gruvbox")
--vim.opt.background = "light"
