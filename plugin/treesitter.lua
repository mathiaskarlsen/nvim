-- Automatically update parsers to the latest version when upgrading the plugin.
vim.api.nvim_create_autocmd('PackChanged', { callback = function(ev)
  local name, kind = ev.data.spec.name, ev.data.kind
  if name == 'nvim-treesitter' and kind == 'update' then
    if not ev.data.active then vim.cmd.packadd('nvim-treesitter') end
    vim.cmd('TSUpdate')
  end
end })

vim.pack.add({
  'https://github.com/nvim-treesitter/nvim-treesitter',
})

local parsers = {
  "lua",
  "python",
  "c",
  "cpp",
  "cmake",
  "bash",
  "javascript",
  "html",
  "css",
  "json",
  "markdown",
  "markdown_inline",
  "dockerfile",
}

if vim.fn.executable("tree-sitter") == 1 then
  require("nvim-treesitter").install(parsers)
else
  vim.notify(
    "tree-sitter-cli is not installed; Tree-sitter parsers were not installed",
    vim.log.levels.WARN
  )
end

-- Enable Treesitter highlighting if parsers are installed.
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    local lang = vim.treesitter.language.get_lang(vim.bo.filetype)

    if lang and vim.tbl_contains(parsers, lang) then
      pcall(vim.treesitter.start)
    end
  end,
})
