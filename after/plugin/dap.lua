local dap = require('dap')

vim.keymap.set('n', '<leader>br', dap.toggle_breakpoint)
vim.keymap.set('n', '<F10>', dap.step_into)
vim.keymap.set('n', '<F11>', dap.step_over)
vim.keymap.set('n', '<F5>', dap.continue)
