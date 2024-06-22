return {
  {
    "ggandor/leap.nvim",
    config = function()
      require('leap').create_default_mappings()
      vim.keymap.set('n', 's', '<Plug>(leap)')
    end
  }
}

