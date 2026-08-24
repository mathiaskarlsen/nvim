
-- lsp formatting
-- vim.api.nvim_create_autocmd('LspAttach', {
--   callback = function(args)
--     local client = vim.lsp.get_client_by_id(args.data.client_id)
--     if not client then return end
--     if client:supports_method('textDocument/formatting') then
--       -- Format the current buffer on save
--       vim.api.nvim_create_autocmd('BufWritePre', {
--         buffer = args.buf,
--         callback = function()
--           vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
--         end,
--       })
--     end
--   end,
-- })


-- clipboard integration

-- scheduled setting after `UiEnter` because it can increase startup-time
-- vim.schedule(function()
--   vim.opt.clipboard = "unnamedplus"
-- end)


-- Reminder to update plugins
local stamp = vim.fn.stdpath("state") .. "/last-packcheck"
local month = 30 * 24 * 60 * 60

local function mark_checked()
  vim.fn.writefile({ tostring(os.time()) }, stamp)
end

vim.api.nvim_create_user_command("PackUpdate", function()
  vim.pack.update()
  mark_checked()
end, {})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local last

    if vim.fn.filereadable(stamp) == 1 then
      last = tonumber(vim.fn.readfile(stamp)[1])
    end

    if not last or os.time() - last >= month then
      vim.notify("Plugins haven't been checked for updates in a month")
    end
  end,
})
