vim.g.mapleader = " "
require("options")
require("keymaps")
require("config.lazy")
require("autocommands")

vim.filetype.add({
  extension = {
    module = "php",
    install = "php",
    theme = "php",
  }
})

-- TODO: look into more plugins to add
-- cloak
-- todo-comments
-- mini
-- snacks
-- something for git (fugitive?)
-- ai????
-- notes
-- trouble
-- DAP
-- linter
-- formatter
-- write down important keybinds somewhere
