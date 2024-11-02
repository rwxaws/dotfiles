return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },

  config = function()
    local lspconfig = require('lspconfig')
    local builtin = require('telescope.builtin')

    local lsp_keybindings = function()
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {buffer = 0})
      vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, {buffer = 0})
      vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {buffer = 0})
      vim.keymap.set("n", "<leader>ga", vim.lsp.buf.code_action, {buffer = 0})
      vim.keymap.set("n", "<leader>gr", builtin.lsp_references, {buffer = 0})

      vim.keymap.set("n", "<leader>dl", builtin.diagnostics, {buffer = 0})
      vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, {buffer = 0})
      vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, {buffer = 0})

      vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer = 0})
      vim.keymap.set("n", "<leader>gr", builtin.lsp_references, {buffer = 0})
    end

    lspconfig.gopls.setup{ on_attach = lsp_keybindings }
    lspconfig.pyright.setup{ on_attach = lsp_keybindings }
    lspconfig.lua_ls.setup{ on_attach = lsp_keybindings }
    lspconfig.bashls.setup{ on_attach = lsp_keybindings }
  end,
}
