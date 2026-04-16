function Get_word_count()
  local counts = vim.fn.wordcount()

  if counts.visual_words ~= nil then
    return counts.visual_words
  else
    return counts.words
  end
end

vim.opt.statusline = " %f%m %r Word Count: %{v:lua.Get_word_count()} %= %-14.(%l,%c%V%) %P "

vim.cmd('setlocal spell spelllang=pl,en,ru')
