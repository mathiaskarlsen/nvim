vim.pack.add({
  'https://github.com/ibhagwan/fzf-lua',
})

-- Fuzzy finder
vim.keymap.set("n", "<space>ff", function()
  require("fzf-lua").files()
end)

vim.keymap.set("n", "<space>fg", function()
  require("fzf-lua").live_grep()
end)

vim.keymap.set("n", "<space>en", function()
  require("fzf-lua").files({
    cwd = vim.fn.stdpath("config"),
  })
end)
