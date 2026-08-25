vim.pack.add({
  'https://github.com/ibhagwan/fzf-lua',
})

-- Fuzzy finder
local fzf = require("fzf-lua")


-- Search cwd file names.
vim.keymap.set("n", "<space>ff", fzf.files)

-- Grep cwd files.
vim.keymap.set("n", "<space>fg", fzf.live_grep)

-- Search nvim :help.
vim.keymap.set("n", "<space>fh", fzf.helptags)

-- Search nvim config files.
vim.keymap.set("n", "<space>en", function()
  fzf.files({
    cwd = vim.fn.stdpath("config"),
  })
end)
