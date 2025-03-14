local minifiles = require("mini.files")
minifiles.setup{}

vim.keymap.set("n", "-", function() minifiles.open() end, { noremap = true, desc = "Mini Files" })

return minifiles
