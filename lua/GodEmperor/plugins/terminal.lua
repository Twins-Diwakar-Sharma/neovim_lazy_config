-- float term: the cooler one
return {
  'voldikss/vim-floaterm',
  config = function()
    vim.keymap.set('n', '<m-t>', ':FloatermToggle<CR>')
    vim.keymap.set('n', '<c-t>c', ':FloatermNew<CR>')
    vim.keymap.set('n', '<c-t>n', ':FloatermNext<CR>')
    vim.keymap.set('n', '<c-t>N', ':FloatermPrev<CR>')
    vim.keymap.set('t', '<m-t>', [[<C-\><C-n>:FloatermToggle<CR>]])
    vim.cmd([[hi FloatermBorder guibg=black guifg=violet]])
    vim.cmd([[let g:floaterm_shell = 'powershell.exe']])
  end,
}
