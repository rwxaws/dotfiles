local builtin   = require("telescope.builtin")
local themes    = require("telescope.themes")
local keymap    = vim.keymap

local function search_dotfiles()
  builtin.find_files({
    hidden = true,
    find_command = {"fd", "-t", "f", "--hidden", "-E", "*.{jpg,png}"},
    cwd="$HOME/dotfiles",
    file_ignore_patterns = { ".git/" },
  })
end

local opts = {sorting_strategy = "ascending"}
keymap.set('n', '<leader>ff', builtin.find_files, {desc="find files in current directory"})
keymap.set('n', '<leader>fb', builtin.buffers, {desc="fuzzy search buffers"})
keymap.set('n', '<C-/>', function() builtin.current_buffer_fuzzy_find(themes.get_ivy(opts)) end)

keymap.set('n', '<leader>fc', search_dotfiles, {desc="search dotfiles"})

