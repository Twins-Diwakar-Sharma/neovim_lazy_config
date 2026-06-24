return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = {'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons'},

  opts = {},
  config = function()
    require('render-markdown').setup({
      code = {
        width = 'block',
        min_width = 45,
      },
      heading = {
        width = 'block',
        min_width = 30,
      },
    })
  end

}
