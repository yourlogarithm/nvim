local cd = function(prompt_bufnr)
    local selection = require("telescope.actions.state").get_selected_entry()
    local dir = vim.fn.fnamemodify(selection.path, ":p:h")
    require("telescope.actions").close(prompt_bufnr)
    vim.cmd(string.format("silent lcd %s", dir))
end

local telescope = require('telescope')
telescope.setup({
    extensions = {
        file_browser = {
            theme = 'ivy',
            hijack_netrw = true,
            hidden = true,
            mappings = {
                ["i"] = {
                    ["<F8>"] = function(bufnr)
                        vim.cmd("stopinsert")
                        local confirm = vim.fn.input("Delete this file? Type 'yes' to confirm: ")
                        if confirm == "yes" then
                          local file_to_delete = vim.fn.expand("%:p")
                          if file_to_delete ~= "" then
                            vim.fn.delete(file_to_delete)
                            print("Deleted file: " .. file_to_delete)
                            vim.cmd(bufnr .. "bd!")
                          else
                            print("No file found under the cursor.")
                          end
                        else
                          print("File deletion cancelled.")
                        end
                    end
                }
            }
        }
    },
    pickers = {
        find_files = {
            hidden = true,
            mappings = {
                n = {
                    ["cd"] = cd
                }
            },
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

telescope.load_extension("projects")
telescope.load_extension("file_browser")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>FF', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>fp', telescope.extensions.projects.projects)
