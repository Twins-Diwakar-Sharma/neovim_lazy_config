return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({
        size = 10,
        open_mapping = [[<m-i>]],
        shading_factor = 2,
        direction = "float",
        float_opts = {
            border = "double",
            highlights = {
            },
        },
    }) 

  end,
}
