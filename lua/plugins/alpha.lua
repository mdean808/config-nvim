return {
  {
    "goolord/alpha-nvim",
    opts = function(_, dashboard)
      dashboard.section.buttons.val = {
        dashboard.button("s", " " .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
        dashboard.button("p", " " .. " Projects", ":Telescope projects <CR>"),
        dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
        dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
        dashboard.button("q", " " .. " Quit", ":qa<CR>"),
      }
    end,
  },
}
