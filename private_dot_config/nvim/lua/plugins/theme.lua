return {
  -- "loctvl842/monokai-pro.nvim",
  "oahlen/iceberg.nvim",
  priority = 1000,
  config = function()
    vim.cmd([[ colorscheme iceberg ]])
  end
}
