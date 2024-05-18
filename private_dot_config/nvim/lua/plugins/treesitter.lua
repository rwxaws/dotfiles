return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {"nvim-treesitter/nvim-treesitter-textobjects"},
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },

  config = function()
    require("nvim-treesitter.configs").setup{
      ensure_installed = { "lua", "go", "python", "bash" },
      sync_install = false,
      auto_install = true,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      indent = {enable = true},

      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          },
        },
      }
    }
  end
}
