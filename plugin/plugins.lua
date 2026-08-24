vim.pack.add({
  'https://github.com/stevearc/oil.nvim',
  'https://github.com/tpope/vim-sleuth',
})

-- Neovim file explorer: edit your filesystem like a buffer
require("oil").setup()
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- TODO 
-- [ ] read through all of mini.nvim
-- [ ] update options.lua
-- [ ] debugging/testing - DAP/neotest/etc.
-- [ ] git integration - mini.git, gitsigns, etc.
-- [ ] lazy loading (https://echasnovski.com/blog/2026-03-13-a-guide-to-vim-pack#lazy-loading)
