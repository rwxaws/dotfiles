local opt = vim.opt

-- number options
opt.relativenumber = true
opt.number         = true

-- search options
opt.ignorecase = true
opt.smartcase  = true
opt.hlsearch   = false

-- tab options
opt.tabstop    = 2
opt.shiftwidth = 2
opt.expandtab  = true
opt.autoindent = true

-- scrolloff
opt.scrolloff  = 10

-- prevent text from shifting when there are errors
opt.signcolumn = "yes"
opt.termguicolors = true
opt.background = "dark"
opt.colorcolumn = '80'

-- statusline options
opt.laststatus = 3
opt.cmdheight = 0

-- clipboard
opt.clipboard:append("unnamedplus")

-- backspace
opt.backspace = "indent,eol,start"

-- split windows
opt.splitright = true
opt.splitbelow = true

-- turn off swapfile
opt.swapfile = false
