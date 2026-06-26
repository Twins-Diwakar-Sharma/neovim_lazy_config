vim.pack.add({ "https://github.com/nvim-mini/mini.files.git" })

require('mini.files').setup()

vim.keymap.set("n", "<leader>e", 
  function()
    if not MiniFiles.close() then MiniFiles.open() end
  end
)
