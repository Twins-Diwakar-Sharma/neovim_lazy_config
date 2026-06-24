vim.pack.add({ 'https://github.com/neovim/nvim-lspconfig' })

-- enable lsp lines
vim.diagnostic.config({
  virtual_text = false,
  virtual_lines = true,
})


vim.lsp.enable({ 
  'lua_ls',
  'ccls',
})

