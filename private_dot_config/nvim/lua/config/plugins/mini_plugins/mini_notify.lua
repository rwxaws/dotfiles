local notify = require("mini.notify")
notify.setup{}

-- replace vim.notify with mini_notify
vim.notify = notify.make_notify({
  ERROR = { duration = 5000 },
  WARN  = { duration = 4000 },
  INFO  = { duration = 3000 },
})

vim.keymap.set("n", "<leader>nn", function() notify.show_history() end, { noremap = true, desc="Show All Notifications" })

return notify
