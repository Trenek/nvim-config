require("flutter-tools").setup({
  ui = {
    border = "rounded",
  },
  decorations = {
    statusline = {
      device = true,
      app_version = true,
    }
  },
  widget_guides = {
    enabled = true,
  },
  closing_tags = {
    highlight = "Comment",
    prefix = "// ",
    enabled = true,
  },
  lsp = {
    color_capabilities = true,
    settings = {
      showTodos = true,
      completeFunctionCalls = true,
    },
  },
})
