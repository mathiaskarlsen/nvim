-- opt_local sets an option for the current buffer/window.
local set = vim.opt_local
set.shiftwidth = 2


-- Execute the whole Lua file
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")

-- Execute the current Lua line
vim.keymap.set("n", "<space>x", ":.lua<CR>")

-- Execute visually selected Lua lines
vim.keymap.set("v", "<space>x", ":lua<CR>")
