return {
  {
    "folke/todo-comments.nvim",
    opts = {
      keywords = {
        FIX = {
          icon = " ",
          color = "error",
          alt = { "FIXME", "BUG", "FIXIT", "ISSUE", "fix", "fixme", "bug", "issue" },
        },
        TODO = { icon = " ", color = "info", alt = { "todo", "to do" } },
        HACK = { icon = " ", color = "warning", alt = { "hack" } },
        WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX", "warning", "xxx", "warn" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO", "note", "info", "inf" } },
        TEST = {
          icon = "⏲ ",
          color = "test",
          alt = { "TESTING", "PASSED", "FAILED", "test", "testing", "passed", "failed" },
        },
      },
    },
  },
}
