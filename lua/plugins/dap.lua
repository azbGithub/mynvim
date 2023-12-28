-- TODO: whichkey and figure out how it works and change icon
return {
  "mfussenegger/nvim-dap",
  event = "BufRead",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
    "nvim-telescope/telescope-dap.nvim",
    "jay-babu/mason-nvim-dap.nvim",
    "mfussenegger/nvim-dap-python",
  },
  config = function()
    local opts = { noremap = true, silent = true }
    opts.desc = "dap start"
    vim.keymap.set("n", "<F5>", function()
      require("telescope").extensions.dap.configurations {}
    end, opts)
    opts.desc = "step_over"
    vim.keymap.set("n", "<F10>", function()
      require("dap").step_over()
    end, opts)
    opts.desc = "step_into"
    vim.keymap.set("n", "<F11>", function()
      require("dap").step_into()
    end, opts)
    opts.desc = "step_out"
    vim.keymap.set("n", "<F12>", function()
      require("dap").step_out()
    end, opts)
    opts.desc = "breakpoint"
    vim.keymap.set("n", "<Leader>db", function()
      require("dap").toggle_breakpoint()
    end, opts)
    opts.desc = "list_breakpoints"
    vim.keymap.set("n", "<Leader>fB", function()
      require("telescope").extensions.dap.list_breakpoints {}
    end, opts)
    opts.desc = "set_breakpoint"
    vim.keymap.set("n", "<Leader>dB", function()
      require("dap").set_breakpoint()
    end, opts)
    -- TODO: figure out the function of it
    vim.keymap.set("n", "<Leader>dp", function()
      require("dap").set_breakpoint(nil, nil, vim.fn.input "Log point message: ")
    end, opts)
    -- TODO: figure out the function of it
    vim.keymap.set("n", "<Leader>dr", function()
      require("dap").repl.open()
    end, opts)
    -- TODO: figure out the function of it
    vim.keymap.set("n", "<Leader>dl", function()
      require("dap").run_last()
    end, opts)
    -- TODO: figure out the function of it
    vim.keymap.set({ "n", "v" }, "<Leader>dh", function()
      require("dap.ui.widgets").hover()
    end, opts)
    require("nvim-dap-virtual-text").setup()
    local dap, dapui = require "dap", require "dapui"
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end
    require("mason-nvim-dap").setup()
  end,
}
