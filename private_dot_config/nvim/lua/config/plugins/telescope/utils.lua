local M = {}

local builtin   = require("telescope.builtin")

M.setup = function()
  vim.keymap.set('n', '<leader>FF', builtin.find_files, {desc="find files in current directory"})
  vim.keymap.set('n', '<leader>ff', builtin.buffers, {desc="fuzzy search buffers"})
end

return M
