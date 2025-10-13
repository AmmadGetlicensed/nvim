return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.options = opts.options or {}
    opts.options.theme = "auto"
    
    -- Make modified indicator more prominent
    opts.sections = opts.sections or {}
    opts.sections.lualine_c = {
      {
        "filename",
        path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
        symbols = {
          modified = " ●", -- Text to show when the file is modified
          readonly = " ", -- Text to show when the file is readonly
          unnamed = "[No Name]", -- Text to show for unnamed buffers
        },
      },
    }
  end,
}
