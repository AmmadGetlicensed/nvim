return {
  -- Smart block matching (if, while, functions, braces)
  {
    "andymass/vim-matchup",
    event = "BufReadPost",
    config = function()
      -- Highlight matching pairs even offscreen with popup
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
      vim.g.matchup_matchparen_deferred = 1       -- async matching
      vim.g.matchup_matchparen_timeout = 100     -- faster response
      vim.g.matchup_matchparen_hi_surround_always = 1
      vim.g.matchup_override_vim_matchparen = 1  -- replace default matchparen
    end,
  },

  -- Rainbow parentheses / brackets / braces for visual clarity
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "BufReadPost",
    config = function()
      require('rainbow-delimiters.setup') -- initialize
      -- optional: configure colors for clarity
      vim.g.rainbow_delimiters = {
        strategy = {
          [""] = require('rainbow-delimiters.strategy.global'),
        },
        query = {
          [""] = 'rainbow-delimiters',
        },
        highlight = {
          'RainbowDelimiterRed',
          'RainbowDelimiterYellow',
          'RainbowDelimiterBlue',
          'RainbowDelimiterOrange',
          'RainbowDelimiterGreen',
          'RainbowDelimiterViolet',
          'RainbowDelimiterCyan',
        },
      }
    end,
  },

  -- Optional: smooth scrolling while preserving highlight stability
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require('neoscroll').setup({
        easing_function = "quadratic",  -- smooth, gentle scroll
        hide_cursor = false,
        stop_eof = true,
        respect_scrolloff = true,
        cursor_scrolls_alone = true,
      })
    end,
  },
}

