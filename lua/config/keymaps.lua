-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>sf", function()
  builtin.lsp_document_symbols({ symbols = { "Function", "Method" } })
end, { desc = "Search functions (current file)" })

vim.keymap.set("n", "<leader>sv", function()
  builtin.lsp_document_symbols({ symbols = { "Variable", "Field" } })
end, { desc = "Search variables (current file)" })


vim.keymap.set("n", "<leader>ln", function()
  vim.opt.relativenumber = not vim.opt.relativenumber:get()
end, { desc = "Toggle relative line numbers" })
