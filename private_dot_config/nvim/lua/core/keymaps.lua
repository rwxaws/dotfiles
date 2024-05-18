local default_opts = { silent = true, noremap = true }

-- leader key --
vim.g.mapleader = " "

local keymaps = {
  -- command mode
	{ mode = {"n", "x"}, lhs = "<leader><leader>", rhs = ":", desc = "command mode"},

	-- buffers
	{ mode = "n", lhs = "<S-l>", rhs = "<cmd>bn<cr>", desc = "next buffer"},
	{ mode = "n", lhs = "<S-h>", rhs = "<cmd>bp<cr>", desc = "previous buffer"},
	{ mode = "n", lhs = "<leader>bd", rhs = "<cmd>bd<cr>", desc = "delete current buffer"},

	-- copy & paste (to system clipboard)
	{ mode = "n", lhs = "<leader>yy", rhs = "\"+y", desc = "yank"},
	{ mode = "n", lhs = "<leader>pp", rhs = "\"+p", desc = "paste"},

	-- quicklist navigation
	{ mode = "n", lhs = "<C-j>", rhs = "<cmd>silent! cnext<cr>", desc = "next item in quickfix list"},
	{ mode = "n", lhs = "<C-k>", rhs = "<cmd>silent! cprev<cr>", desc = "prev item in quickfix list"},

	-- center serach results
	{ mode = "n", lhs = "n", rhs = "nzz", desc = "center next search item"},
	{ mode = "n", lhs = "N", rhs = "Nzz", desc = "center prev search item"},

	-- better indent
	{ mode = "v", lhs = "<", rhs = "<gv", desc = "de-indent & re-select"},
	{ mode = "v", lhs = ">", rhs = ">gv", desc = "indent & re-select"},

	-- resize panes
	{ mode = "n", lhs = "<Left>", rhs = "<cmd>vertical resize -1<cr>", desc = "decrease vertical pane size"},
	{ mode = "n", lhs = "<Right>", rhs = "<cmd>vertical resize +1<cr>", desc = "increase vertical pane size"},
	{ mode = "n", lhs = "<Down>", rhs = "<cmd>resize -1<cr>", desc = "decrease horizontal pane size"},
	{ mode = "n", lhs = "<Up>", rhs = "<cmd>resize +1<cr>", desc = "increase horizontal pane size"},

	-- window management
	{ mode = "n", lhs = "<leader>ss", rhs = "<C-w>v", desc = "split vertically"},
	{ mode = "n", lhs = "<leader>sh", rhs = "<C-w>s", desc = "split horizontally"},
	{ mode = "n", lhs = "<leader>se", rhs = "<C-w>=", desc = "make splits equal in size"},
	{ mode = "n", lhs = "<leader>sx", rhs = "<C-w>c", desc = "close split"},

	-- tab management
	{ mode = "n", lhs = "<leader>tt", rhs = "<cmd>tabnew<cr>", desc = "new tab"},
	{ mode = "n", lhs = "<leader>tx", rhs = "<cmd>tabclose<cr>", desc = "close tab"},
	{ mode = "n", lhs = "<leader>tn", rhs = "<cmd>tabn<cr>", desc = "next tab"},
	{ mode = "n", lhs = "<leader>tp", rhs = "<cmd>tabp<cr>", desc = "prev tab"},
	{ mode = "n", lhs = "<leader>tf", rhs = "<cmd><cr>", desc = "open current buffer in new tab"},
}

for _, map in ipairs(keymaps) do
	local opts = vim.deepcopy(default_opts)
	opts.desc = map.desc
	vim.keymap.set(map.mode, map.lhs, map.rhs, opts)
end
