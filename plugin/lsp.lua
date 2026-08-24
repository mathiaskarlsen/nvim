vim.pack.add({
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/mason-org/mason-lspconfig.nvim',
  'https://github.com/folke/lazydev.nvim',
})

-- nvim-lspconfig is a collection of ready-made LSP server configurations, 
-- so you don't have to configure servers yourself.

-- Properly configures LuaLS for editing Neovim config.
require("lazydev").setup()

-- Mason is a package manager for installing and managing LSP servers, DAP servers, linters, and formatters.
require("mason").setup()

-- Extension to mason.nvim that automatically installs and enables language servers.
-- Also provides some extra features such as the :LspInstall command
require("mason-lspconfig").setup({
    ensure_installed = {
      "lua_ls",
      "clangd",
    },
})
