--
-- Docs: https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt
--
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 40,
  },
  renderer = {
    -- Compact folders that only contain a single folder into one node.
    group_empty = true,

    -- Enable highlight for git attributes using `NvimTreeGit*HL` highlight groups.
    highlight_git = "icon",

    -- Highlight icons and/or names for |bufloaded()| files using the
    highlight_opened_files = "icon",

    -- Highlight icons and/or names for modified files using the `NvimTreeModifiedFile` highlight group.
    highlight_modified = "all",
  },
  modified = {

    -- Must be enabled for renderer.highlight_modified to work
    enable = true,
  },
  filters = {
    -- Show files like .gitignore
    dotfiles = false,
  },
})

vim.keymap.set("n", "<C-t>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-n>", ":NvimTreeFindFile<CR>")
