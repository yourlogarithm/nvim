vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
-- vim.iot.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.optscrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "140"

vim.opt.scrolloff = 999

vim.cmd.colorscheme 'gruvbox'

vim.cmd "set list"
vim.cmd "set lcs+=space:·"

vim.api.nvim_command('au BufRead,BufNewFile *.falang set filetype=falang')
vim.api.nvim_command('au BufRead,BufNewfile *.smali set filetype=smali')
