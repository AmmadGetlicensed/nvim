-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldenable = true
vim.opt.foldcolumn = "1" -- Add this line
-- vim.opt.grepprg = "rg --vimgrep --no-heading --smart-case --fixed-strings"
vim.g.lazyvim_php_lsp = "intelephense"
vim.opt.scroll = 0
