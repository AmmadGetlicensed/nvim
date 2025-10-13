return {
  "lukas-reineke/indent-blankline.nvim",
  lazy = false,
  config = function()
    -- v3 config using vim.g
    vim.g.indent_blankline_char = "│"
    vim.g.indent_blankline_show_trailing_blankline_indent = false
    vim.g.indent_blankline_show_first_indent_level = true
    vim.g.indent_blankline_use_treesitter = true
    vim.g.indent_blankline_filetype_exclude = { "help", "terminal" }
    vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }

    -- optional: highlight current context
    vim.g.indent_blankline_show_current_context = true
    vim.g.indent_blankline_show_current_context_start = true
  end,
}

