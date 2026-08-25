vim.pack.add({
  'https://github.com/nvim-mini/mini.nvim',
})

-- vim.cmd.colorscheme('miniwinter')
require('mini.icons').setup()
require('mini.statusline').setup()
require('mini.basics').setup()
require('mini.surround').setup()
require('mini.indentscope').setup()
require('mini.git').setup()
require('mini.notify').setup()
require('mini.misc').setup()
MiniMisc.setup_termbg_sync()
require('mini.pairs').setup()
require("mini.hipatterns").setup({
  highlighters = {
    todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo", },
    fix = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme", },
    hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack", },
    warn = { pattern = "%f[%w]()WARN()%f[%W]", group = "MiniHipatternsHack", },
    warning = { pattern = "%f[%w]()WARNING()%f[%W]", group = "MiniHipatternsHack", },
    note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote", },
  },
})
