local miniextra = require("mini.extra")
miniextra.setup{}

vim.keymap.set("n", "<leader>ff", ":Pick explorer<CR>", { noremap = true, desc = "Pick Files" })

return miniextra
