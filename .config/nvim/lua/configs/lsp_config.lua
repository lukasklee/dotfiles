require("mason-null-ls").setup({
  ensure_installed = {
    "stylua",
    "eslint-lsp",
    "prettierd",
  },
})

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "tsserver" },
})

local lspconfig = require("lspconfig")

-- Configurations:
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {

        -- Suppress warning: undefined global `vim`
        --globals = {"vim"}
      },
    },
  },
})

lspconfig.tsserver.setup({})

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
  end,
})
