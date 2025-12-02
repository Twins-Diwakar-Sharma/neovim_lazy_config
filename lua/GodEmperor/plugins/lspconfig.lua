return {
  "neovim/nvim-lspconfig",
    config = function()
      vim.diagnostic.config({
        --virtual_text = true,  
        -- uncomment it when not using lsp_lines
      })

      local lspconfig = require('lspconfig')
      local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

--[[
      -- ccls
      lspconfig.ccls.setup({
        capabilities = lsp_capabilities,
      })
      vim.keymap.set('n', '<Leader>hs', ':CclsSwitchSourceHeader<CR>')
]]
--[[
    --clangd
    lspconfig.clangd.setup({
      capabilities = lsp_capabilities,
      cmd = {'C:\\Development\\cclsCMAKE\\llvm-project\\Release\\bin\\clangd.exe'}
    })
    ]]

  end,
}
