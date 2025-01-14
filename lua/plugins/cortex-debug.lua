return {
  'jedrzejboczar/nvim-dap-cortex-debug',
  dependencies = {
    'mfussenegger/nvim-dap',
  },
  config = function()
    -- Setup dap-cortex-debug
    require('dap-cortex-debug').setup {
      debug = false, -- log debug messages
      extension_path = nil, -- path to cortex-debug extension, supports vim.fn.glob
      lib_extension = nil, -- shared libraries extension, tries auto-detecting, e.g. 'so' on unix
      node_path = '/usr/bin/node', -- path to node.js executable
      dapui_rtt = true, -- register nvim-dap-ui RTT element
      dap_vscode_filetypes = { 'c', 'cpp' }, -- make :DapLoadLaunchJSON register cortex-debug for C/C++
      rtt = {
        buftype = 'Terminal', -- 'Terminal' or 'BufTerminal' for terminal buffer vs normal buffer
      },
    }

    -- Configure DAP for Cortex Debug
    local dap_cortex_debug = require 'dap-cortex-debug'
    require('dap').configurations.c = {
      dap_cortex_debug.openocd_config {
        name = 'Example debugging with OpenOCD',
        cwd = '${workspaceFolder}',
        executable = '/home/eren/Projects/stm_bare_metal/stm32f722_project.elf',
        configFiles = { '/home/eren/Projects/stm_bare_metal/openocd.cfg' },
        gdbTarget = 'localhost:3333',
        rttConfig = dap_cortex_debug.rtt_config(0),
        showDevDebugOutput = false,
      },
    }
  end,
}
