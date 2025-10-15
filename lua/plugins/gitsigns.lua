return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true, -- 🔥 show Git blame at end of current line
    current_line_blame_opts = {
      delay = 500,              -- show after 0.5s hover
      virt_text = true,
      virt_text_pos = "eol",    -- show at end of line
    },
    current_line_blame_formatter = "   <author>, <author_time:%Y-%m-%d> - <summary>",
  },
}

