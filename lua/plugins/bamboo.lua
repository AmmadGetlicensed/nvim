return 
{
  'ribru17/bamboo.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('bamboo').setup {
     variant = "vulgaris",  -- set the bamboo vulgaris variant
        -- you can add optional config here if needed
    }
    require('bamboo').load()
  end,
}
