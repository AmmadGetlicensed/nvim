return {
  {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    event = "VeryLazy",

    opts = {
      -- ✅ Use Treesitter for most, but indent for PHP & Blade
      provider_selector = function(bufnr, filetype, buftype)
        if filetype == "php" or filetype == "blade" then
          return { "indent" }
        end
        return { "treesitter", "indent" }
      end,

      -- ✅ Beautiful virtual text for folded lines
      fold_virt_text_handler = function(virtText, lnum, endLnum, width, truncate)
        local newVirtText = {}
        local suffix = ("    %d lines "):format(endLnum - lnum)
        local sufWidth = vim.fn.strdisplaywidth(suffix)
        local targetWidth = width - sufWidth
        local curWidth = 0

        for _, chunk in ipairs(virtText) do
          local chunkText = chunk[1]
          local chunkWidth = vim.fn.strdisplaywidth(chunkText)
          if targetWidth > curWidth + chunkWidth then
            table.insert(newVirtText, chunk)
            curWidth = curWidth + chunkWidth
          else
            chunkText = truncate(chunkText, targetWidth - curWidth)
            table.insert(newVirtText, { chunkText, chunk[2] })
            break
          end
        end

        table.insert(newVirtText, { suffix, "MoreMsg" })
        return newVirtText
      end,
    },

    config = function(_, opts)
      -- ✅ Global folding settings
      vim.o.foldcolumn = "1"
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      -- ✅ Force indent folding for PHP & Blade (so arrays/maps fold)
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "php", "blade" },
        callback = function()
          vim.opt_local.foldmethod = "indent"
          vim.opt_local.foldexpr = ""
          vim.opt_local.foldenable = true
          vim.opt_local.foldlevel = 99
          vim.opt_local.foldcolumn = "1"
        end,
      })

      -- ✅ Setup plugin
      require("ufo").setup(opts)

      -- ✅ Optional keymaps
      vim.keymap.set("n", "zR", require("ufo").openAllFolds)
      vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
      vim.keymap.set("n", "zp", require("ufo").peekFoldedLinesUnderCursor)
    end,
  },
}

