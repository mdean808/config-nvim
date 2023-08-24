return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- change a keymap
      keys[#keys + 1] = { "gd", "<cmd>Lspsaga peek_definition<cr>" }
      keys[#keys + 1] = { "gD", "<cmd>Lspsaga goto_definition<cr>" }
      keys[#keys + 1] = { "gr", "<cmd>Lspsaga finder<cr>" }
    end,
  },
}
