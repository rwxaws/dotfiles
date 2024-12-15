return {
  "nvim-telescope/telescope.nvim", tag = "0.1.6",
  dependencies = {
    'nvim-lua/plenary.nvim',
    { "nvim-telescope/telescope-fzf-native.nvim", build="make"},
  },

  config = function()
    local telescope = require("telescope")
    local keymap    = vim.keymap

    telescope.load_extension("fzf")

    telescope.setup{
      defaults = {
        theme = "ivy",
        layout_strategy = 'horizontal',
        layout_config = {
          horizontal = {
            width = 0.95,
            preview_width = 0.6,
            preview_cutoff = 50
          }
        }
      },
      extensions = {
        fzf = {}
      }
    }

    require("config.telescope.utils").setup()
  end,
}

