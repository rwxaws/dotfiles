local M = {}

local builtin   = require("telescope.builtin")

local M.setup = function()
  keymap.set('n', '<leader>FF', builtin.find_files, {desc="find files in current directory"})
  keymap.set('n', '<leader>ff', builtin.buffers, {desc="fuzzy search buffers"})
end

return M
