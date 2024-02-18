-- vim.keymap.set("n", "<leader>fb", '<Cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>')
vim.keymap.set("n", "<leader>fb", vim.cmd.Ex)

vim.keymap.set({"i", "n"}, "<F2>", vim.cmd.w)
vim.keymap.set({"i", "n"}, "<F4>", vim.cmd.q)
vim.keymap.set({"i", "n"}, "<F16>", vim.cmd.cq)

vim.keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true })
vim.keymap.set("i", "<S-Tab>", "<C-d>", { noremap = true, silent = true })

vim.keymap.set("v", "<M-Up>", "<ESC>:m-2<Enter>i", { noremap = true, silent = true })
vim.keymap.set("v", "<M-Down>", "<ESC>:m+<Enter>i", { noremap = true, silent = true })
vim.keymap.set("i", "<M-Up>", "<ESC>:m-2<Enter>i", { noremap = true, silent = true })
vim.keymap.set("i", "<M-Down>", "<ESC>:m+<Enter>i", { noremap = true, silent = true })

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], { noremap = true, silent = true})
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({"n", "v"}, "y", [["+y]])
vim.keymap.set("n", "Y", [["+Y]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>fo", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
