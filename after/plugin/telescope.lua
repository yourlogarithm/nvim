local cd = function(prompt_bufnr)
    local selection = require("telescope.actions.state").get_selected_entry()
    local dir = vim.fn.fnamemodify(selection.path, ":p:h")
    require("telescope.actions").close(prompt_bufnr)
    vim.cmd(string.format("silent lcd %s", dir))
end

require('telescope').setup({
    pickers = {
        find_files = {
            hidden = true,
            mappings = {
                n = {
                    ["cd"] = cd
                }
            }
        },
        git_files = {
            hidden = true,
            mappings = {
                n = {
                    ["cd"] = cd
                }
            }
        }
    }
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
vim.keymap.set('n', '<leader>fF', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
