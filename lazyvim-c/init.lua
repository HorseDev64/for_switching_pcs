-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("user.lsp")

-- Auto save on focus lost and on insert leave
vim.api.nvim_create_autocmd({ "FocusLost", "InsertLeave" }, {
  callback = function()
    vim.cmd("silent! wall")
  end,
})

vim.api.nvim_create_autocmd({ "FocusLost", "InsertLeave" }, {
  callback = function()
    if vim.bo.modified then
      vim.cmd("silent! write")
    end
  end,
})
