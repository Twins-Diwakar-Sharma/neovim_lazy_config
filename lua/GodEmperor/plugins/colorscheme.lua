return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd[[colorscheme tokyonight-night]]
  end,
}

--[[
return {
    "tiagovla/tokyodark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd("colorscheme tokyodark")
    end,
}
]]
