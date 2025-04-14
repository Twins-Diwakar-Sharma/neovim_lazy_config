--[[ toggle term  
return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({
        size = 10,
        open_mapping = [[<m-i>]] --,
--[[
        shading_factor = 2,
        direction = "float",
        shell = "powershell.exe",
        float_opts = {
            border = "curved",
            highlights = {
            },
        },
    }) 
  
  end,
}

]]


-- float term: the cooler one
return {
  'voldikss/vim-floaterm',
  config = function()
    vim.keymap.set('n', '<m-i>', ':FloatermToggle<CR>')
    vim.cmd([[hi FloatermBorder guibg=violet guifg=black]])
    vim.cmd([[ let g:floaterm_shell = 'powershell.exe' ]])

  end,
}
