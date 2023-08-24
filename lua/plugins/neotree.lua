return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require("neo-tree").setup({
        filesystem = {
          filtered_iteems = {
            hide_hidden = false,
          },
        },
      })
    end,
  },
}
