local M = {}
local buf = nil

--- Open a tab with a scatch buffer that
--- - can't be saved
--- - have the markdown filetype
M.open = function()
  -- create scrap buffer
  if not buf then
    buf = vim.api.nvim_create_buf(false, true)
    vim.bo[buf].buftype = 'nofile'
    vim.bo[buf].bufhidden = 'hide'
    vim.bo[buf].swapfile = false -- do not create a swap file
    vim.bo[buf].filetype = 'markdown'
  end

  vim.api.nvim_command('tabnew')
  vim.api.nvim_set_current_buf(buf) -- Set the buffer in the new tab
end

return M
