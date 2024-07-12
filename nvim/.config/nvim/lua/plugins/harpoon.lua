return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<Leader>a", function() local harpoon = require("harpoon"); harpoon:list():add() end, desc = "" },
      { "<C-e>", function() local harpoon = require("harpoon"); harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "" },
    },
    opts = {},
  },
}

