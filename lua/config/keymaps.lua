-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.mapleader = " "
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true })

--todo trouble
vim.keymap.set("n", "<leader>T", ":TodoTrouble<CR>", { silent = true })

-- remove serach highlights
vim.keymap.set("n", "<leader>h", ":noh<CR>", { silent = true })

-- move selected text around
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")

-- move between panes
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h")
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l")
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k")
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j")

-- toggleterm
vim.keymap.set("n", "<leader>t", ":ToggleTerm size=30 direction=horizontal<CR>", { silent = true })

-- move between buffers
vim.keymap.set("n", "gT", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "gt", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })

-- lazygit
vim.keymap.set("n", "<leader>G", ":LazyGit<CR>", { silent = true })

-- lspsaga
vim.keymap.set("n", "<leader>i", ":Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("n", "<leader>r", ":Lspsaga rename<CR>", { silent = true })
vim.keymap.set("n", "<leader>y", ":Lspsaga show_line_diagnostics<CR>", { silent = true })

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>o", builtin.find_files, {})
vim.keymap.set("n", "<C-f>", builtin.git_files, {})
vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

local _, actions = pcall(require, "telescope.actions")
require("telescope").setup({
  defaults = {
    mappings = {
      -- for input mode
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,
      },
      -- for normal mode
      n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["q"] = actions.close,
      },
    },
  },
})

--lsp
local lsp_opts = { remap = false }
vim.keymap.set("n", "<leader>k", function()
  vim.lsp.buf.hover()
end, lsp_opts)
vim.keymap.set("n", "<leader>n", function()
  vim.diagnostic.goto_next()
end, lsp_opts)
vim.keymap.set("n", "<leader>N", function()
  vim.diagnostic.goto_next()
end, lsp_opts)
vim.keymap.set("n", "<leader>y", function()
  vim.diagnostic.show()
end, lsp_opts)
