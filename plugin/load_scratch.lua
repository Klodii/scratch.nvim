vim.api.nvim_create_user_command("ScratchTab", function()
  require "scratch".open()
end, {})
