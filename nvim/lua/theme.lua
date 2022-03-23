--Lua:

-- Optional Example Configuration
vim.g.calvera_italic_keywords = false
vim.g.calvera_borders = true
vim.g.calvera_contrast = true
vim.g.calvera_hide_eob = true
vim.g.calvera_custom_colors = {contrast = "#0f111a"}
vim.g.calvera_disable_background = true

-- Required Setting
require('calvera').set()
