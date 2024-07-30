return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<Leader>ha",
        function()
          local harpoon = require("harpoon")
          harpoon:list():add()
        end,
        desc = "Add Harpoon Mark"
      },
      {
        "<Leader>hc",
        function()
          local harpoon = require("harpoon")
          harpoon:list():clear()
        end,
        desc = "Clear Harpoon Marks"
      },
      {
        "<Leader>hs",
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
