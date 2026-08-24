local transparentBG = false

vim.pack.add({
  'https://github.com/rose-pine/neovim',
})


---@diagnostic disable-next-line: missing-fields
require("rose-pine").setup({
  styles = {
    transparency = transparentBG,
  }
})

vim.cmd.colorscheme('rose-pine')

