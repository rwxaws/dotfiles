return {
  "echasnovski/mini.nvim",
  version = false,
  config = function()
    -- set theme
    vim.cmd([[ colorscheme minicyan ]])

    require("config/plugins/mini_plugins/mini_basics")
    require("config/plugins/mini_plugins/mini_comment")

    require("config/plugins/mini_plugins/mini_pairs")
    require("config/plugins/mini_plugins/mini_surround")
    require("config/plugins/mini_plugins/mini_ai")
    require("config/plugins/mini_plugins/mini_bracketed")
    require("config/plugins/mini_plugins/mini_completion")
    require("config/plugins/mini_plugins/mini_clue")
    require("config/plugins/mini_plugins/mini_hipatterns")
    require("config/plugins/mini_plugins/mini_pick")
    require("config/plugins/mini_plugins/mini_extras")
    require("config/plugins/mini_plugins/mini_notify")
    require("config/plugins/mini_plugins/mini_files")

  end
}
