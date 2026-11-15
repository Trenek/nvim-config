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
        executable = "okular",
        args = {
          "--unique",
          "--noraise",
          "file:%p#src:%l%f",
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
