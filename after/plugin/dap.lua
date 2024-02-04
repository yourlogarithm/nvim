local dap = require('dap')

local stop = function ()
    dap.disconnect({ terminateDebugee = true })
    dap.close()
end

vim.keymap.set('n', '<leader>br', dap.toggle_breakpoint)
vim.keymap.set('n', '<F10>', dap.step_into)
vim.keymap.set('n', '<F11>', dap.step_over)
vim.keymap.set('n', '<F5>', dap.continue)
vim.keymap.set('n', '<leader><F4>', stop)

dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    command = '/usr/bin/codelldb',
    args = {"--port", "${port}"},
  }
}

dap.configurations.python = {
    {
        type = 'python';
        request = 'launch';
        name = "Launch file";
        program = "${file}";
        pythonPath = function()
          return '/usr/bin/python'
        end;
    },
}

dap.configurations.rust = {
    {
        name = "Rust debug",
        type = "codelldb",
        request = "launch",
        program = function()
            vim.fn.jobstart('cargo build')
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        showDisassembly = false,
    },
}
