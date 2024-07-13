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
      { "<Leader>fb", function() local builtin = require('telescope.builtin'); builtin.buffers() end, desc = "FZF Buffers" },
      { "<Leader>fs", function() local builtin = require('telescope.builtin'); builtin.grep_string() end, desc = "FZF Grep String" },
      { "<Leader>ft", function() local builtin = require('telescope.builtin'); builtin.treesitter() end, desc = "FZF Treesitter" },
      { "<Leader>fc", function() local builtin = require('telescope.builtin'); builtin.commands() end, desc = "FZF Commands" },
    },
    opts = {
    },
  }
}
