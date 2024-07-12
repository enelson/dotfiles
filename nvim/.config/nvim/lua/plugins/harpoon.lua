return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<Leader>am",
        function()
          local harpoon = require("harpoon")
          harpoon:list():add()
        end,
        desc = "Add Harpoon Mark"
      },
      {
        "<C-e>",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "List Harpoon Marks"
      },
    },
    opts = {},
  },
}

