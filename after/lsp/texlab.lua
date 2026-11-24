return {
  settings = {
    texlab = {
      auxDirectory = ".",
      build = {
        executable = "latexmk",
        args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
        onSave = false,
        forwardSearchAfter = true,
      },
      forwardSearch = {
        executable = "zathura",
        args = {
          "--synctex-forward",
          "%l:1:%f",
          "%p"
        },
      },
      latexFormatter = "latexindent",
      chktex = {
        onOpenAndSave = true,
        onEdit = false,
      },
    },
  },
}
