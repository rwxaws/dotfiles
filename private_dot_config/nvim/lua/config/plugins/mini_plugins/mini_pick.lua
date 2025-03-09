local minipick = require("mini.pick")
minipick.setup{}

-- key setup
vim.keymap.set("n", "<leader>FF", ":Pick buffers<CR>", { noremap = true, desc = "Pick Buffers" })
vim.keymap.set("n", "<leader>/", ":Pick grep_live<CR>", { noremap = true, desc = "Live Grep" })
vim.keymap.set("n", "<leader>?", ":Pick grep<CR>", { noremap = true, desc = "Grep" })

vim.ui.select = minipick.ui_select
return minipick
