return {
  {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.8',
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    keys = {
      { "<Leader>ff", function() local builtin = require('telescope.builtin'); builtin.find_files() end, desc = "FZF Find Files" },
      { "<Leader>fg", function() local builtin = require('telescope.builtin'); builtin.live_grep() end, desc = "FZF Live Grep" },
      { "<Leader>fb", function() local builtin = require('telescope.builtin'); builtin.buffers() end, desc = "Fuzzy Buffers" },
    },
    opts = {
    },
  }
}
