return {
  "ErichDonGubler/lsp_lines.nvim",
  config = function()
    vim.diagnostic.config({ virtual_lines = true })
    require("lsp_lines").setup()
     
    
    vim.keymap.set('', '<M-l>', '', {
      callback = function()
        local current_config = vim.diagnostic.config()
        if current_config.virtual_lines == true then
          vim.diagnostic.config({ virtual_lines = false, virtual_text = true })
        else
          vim.diagnostic.config({ virtual_lines = true, virtual_text = false })
        end
      end
    })
    
  end,
}
