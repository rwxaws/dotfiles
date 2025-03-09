return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim", branch = "master" }
  },
  opts = {},
  keys = {
    { "<leader>zz", ":CopilotChatToggle<CR>", mode = "n", desc = "Toggle Copilot Chat" },
    { "<leader>ze", ":CopilotChatExplain<CR>", mode = "v", desc = "Explain Code" },
    { "<leader>zr", ":CopilotChatReview<CR>", mode = "v", desc = "Review Code" },
    { "<leader>zf", ":CopilotChatFix<CR>", mode = "v", desc = "Fix Code" },
    { "<leader>zo", ":CopilotChatOptimize<CR>", mode = "v", desc = "Optimize Code" },
    { "<leader>zd", ":CopilotChatDocs<CR>", mode = "v", desc = "Generate Docs" },
    { "<leader>zt", ":CopilotChatTests<CR>", mode = "v", desc = "Generate Tests" },
    { "<leader>zm", ":CopilotChatCommit<CR>", mode = "n", desc = "Generate Commit Message" },
    { "<leader>zm", ":CopilotChatCommit<CR>", mode = "v", desc = "Generate Commit Message For Selection" },
  }
}
