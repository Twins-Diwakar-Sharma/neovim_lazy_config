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


vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local opts = {buffer = event.buf}
    local teleBuiltin = require("telescope.builtin")

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts, {desc = "Goto Description"})
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts, {desc = "Goto Declaration"})
    vim.keymap.set("n", "gr", teleBuiltin.lsp_references, opts, {desc = "Goto References"})
    vim.keymap.set("n", "gi", teleBuiltin.lsp_implementations, opts, {desc = "Goto Implementation"})
    vim.keymap.set("n", "gt", teleBuiltin.lsp_type_definitions, opts, {desc = "Goto type definitions"})

    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts, {desc = "Hover Documentation"})
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts, {desc = "Hover Documentation"})
  end,
})
