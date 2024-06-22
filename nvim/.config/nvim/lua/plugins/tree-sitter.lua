return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local tsconfig = require('nvim-treesitter.configs')
    tsconfig.setup({
      auto_install = true
    })
  end
}

