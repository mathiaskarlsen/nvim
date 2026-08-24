vim.pack.add({
  'https://github.com/stevearc/oil.nvim',
  'https://github.com/tpope/vim-sleuth',
})

-- Neovim file explorer: edit your filesystem like a buffer
require("oil").setup()
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

