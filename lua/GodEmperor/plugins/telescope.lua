return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            preview_width = 0.6,
          },
        },
        pickers = {
          colorscheme = {
            theme = "dropdown",
          },
        },
      },
    })

    local builtin = require('telescope.builtin')
    vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
    vim.keymap.set("n", "<leader>th", builtin.colorscheme)
    vim.keymap.set("n", "<leader>fw", function() builtin.live_grep({
      layout_strategy = "vertical",
      layout_config = {
        preview_cutoff = 0
      }
    }) end)

  end,
}
