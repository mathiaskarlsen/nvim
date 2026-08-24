vim.loader.enable()
vim.g.mapleader = " "
require("options")
require("keymaps")
require("autocommands")

-- Drupal has php code in files ending in .module, .install, .theme
vim.filetype.add({
  extension = {
    module = "php",
    install = "php",
    theme = "php",
  }
})

