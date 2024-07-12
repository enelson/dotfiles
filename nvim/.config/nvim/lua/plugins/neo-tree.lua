return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    keys = {
      { "<C-t>", "<CMD>Neotree toggle<CR>", desc = "Toggle NeoTree" },
      { "<Leader>git", "<CMD>Neotree float git_status<CR>", desc = "Show NeoTree Git status" },
    },
    opts = {
      filesystem = {
        follow_current_file = {
          enabled = true,
        }
      }
    },
  }
}

