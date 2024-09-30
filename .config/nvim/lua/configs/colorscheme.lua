vim.o.termguicolors = true
vim.o.background = "dark"

-- require("catppuccin").setup({
--   flavour = "mocha",
--   styles = {
--     comments = { "italic" },
--   },
-- })
-- vim.cmd([[colorscheme catppuccin]])

require("poimandres").setup()
vim.cmd("colorscheme poimandres")
