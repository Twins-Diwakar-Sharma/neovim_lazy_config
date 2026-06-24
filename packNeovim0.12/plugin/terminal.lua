-- using default term, here are keymaps
--

vim.keymap.set("n", "<leader>t", function()
  vim.cmd("belowright split")
  vim.cmd("terminal")
end, { desc = "Terminal" })

vim.keymap.set("n", "<leader>vt", function()
  vim.cmd("belowright vsplit")
  vim.cmd("terminal")
end, { desc = "Terminal Vertical" })

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])

vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]])
vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]])
vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]])
vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]])

vim.keymap.set("n", "<leader>ft", function()
  local buf = vim.api.nvim_create_buf(false, true)

  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)

  vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = (vim.o.lines - height) / 2,
    col = (vim.o.columns - width) / 2,
    border = "rounded",
  })

  vim.cmd("terminal")
end)
