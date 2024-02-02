require('hop').setup({
    keys = 'etovxqpdygfblzhckisuran'
})

vim.keymap.set('n', 'fe', vim.cmd.HopWord)
