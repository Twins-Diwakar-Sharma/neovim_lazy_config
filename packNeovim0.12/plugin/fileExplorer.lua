vim.pack.add({ "https://github.com/nvim-mini/mini.files.git" })

require('mini.files').setup()

vim.keymap.set("n", "<leader>e", 
  function()
    MiniFiles.open()
  end
)
