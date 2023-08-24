return {
  {
    "echasnovski/mini.comment",
    version = "*",
    config = function()
      require("mini.comment").setup({
        mappings = {
          comment = "<leader>/",
          comment_line = "<leader>/",
        },
      })
    end,
  },
}
