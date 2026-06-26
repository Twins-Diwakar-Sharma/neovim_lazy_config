vim.api.nvim_create_autocmd('PackChanged', { callback = function(ev)
  local name, kind = ev.data.spec.name, ev.data.kind
  if name == 'nvim-treesitter' and kind == 'update' then
    if not ev.data.active then vim.cmd.packadd('nvim-treesitter') end
    vim.cmd('TSUpdate')
  end
end })
vim.pack.add({ 'https://github.com/nvim-treesitter/nvim-treesitter' })

-- install tree-sitter-cli with cargo, then add ~/.cargo/bin to PATH in bashrc

require('nvim-treesitter').setup()

languages = {
  'c',
  'rust',
  'cpp',
}

require('nvim-treesitter').install(languages)
vim.api.nvim_create_autocmd("FileType", {
  pattern = languages,
  callback = function()
    vim.treesitter.start()
  end,
})
