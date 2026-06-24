return {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
    "theHamsta/nvim-dap-virtual-text",
  },

  config = function()
    local dapUI = require("dapui")
    local dap = require("dap")
    dapUI.setup()
    require("nvim-dap-virtual-text").setup()

    --dap icons
    vim.fn.sign_define("DapBreakpoint", { text = "💀", texthl = "", linehl = "DapUIBreakpointsCurrentLine", numhl = "" })

    -- configurations
    -- 0. java
    dap.configurations.java = {
      {
        type = 'java';
        request = 'attach';
        name = "Debug (Attach) - Remote";
        hostName = "127.0.0.1";
        port = 5005;
      },
    }

    -- keymaps
    vim.keymap.set("n", "<leader>dt", dapUI.toggle, {desc = "Debugger: Toggle UI"})
    vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {desc = "Debugger: Toggle Breakpoint"})
    vim.keymap.set("n", "<leader>dc", dap.continue, {desc = "Debugger: Continue"})
    vim.keymap.set("n", "<leader>dsi", dap.step_into, {desc = "Debugger: Step Into"})
    vim.keymap.set("n", "<leader>dsv", dap.step_into, {desc = "Debugger: Step Over"})
    vim.keymap.set("n", "<leader>dso", dap.step_into, {desc = "Debugger: Step Out"})
    vim.keymap.set("n", "<leader>dsb", dap.step_into, {desc = "Debugger: Step Back"})
    vim.keymap.set("n", "<leader>dr", dap.restart, {desc = "Debugger: Restart"})
  end,

}
