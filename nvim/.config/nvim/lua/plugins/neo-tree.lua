return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  keys = {
    {
      "<leader>fe",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root(), position = "right" })
      end,
      desc = "Explorer NeoTree (Root Dir)",
    },
  },
}
