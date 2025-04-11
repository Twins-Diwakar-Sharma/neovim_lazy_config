return {
  "neovim/nvim-lspconfig",
    config = function()
      vim.diagnostic.config({
        --virtual_text = true,  
        -- uncomment it when not using lsp_lines
      })

      local lspconfig = require('lspconfig')
      local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
      
      lspconfig.lua_ls.setup({
        capabilities = lsp_capabilities,
      })

      lspconfig.ccls.setup({
        capabilities = lsp_capabilities,
      })
  end,
}
