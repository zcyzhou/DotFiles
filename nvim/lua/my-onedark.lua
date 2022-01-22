local onedarkpro = require("onedarkpro")
onedarkpro.setup({
  -- Theme can be overwritten with 'onedark' or 'onelight' as a string!
  theme = function()
    if vim.o.background == "dark" then
      return "onedark"
    else
      return "onelight"
    end
  end,
  colors = {
	  onedark = {
		  bg = "#292C33",
	  }
  }, -- Override default colors. Can specify colors for "onelight" or "onedark" themes by passing in a table
})
onedarkpro.load()
