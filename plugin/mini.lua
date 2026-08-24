vim.pack.add({
  'https://github.com/nvim-mini/mini.nvim',
})

vim.cmd.colorscheme('miniwinter')
require('mini.icons').setup({})
require('mini.basics').setup()
require('mini.surround').setup()
