return {
   {
      "williamboman/mason.nvim",
      config = function()
         require("mason").setup()
      end,
   },
   {
      "williamboman/mason-lspconfig.nvim",
      config = function()
         require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "clangd", "asm_lsp" },
         })
      end,
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         local lspconfig = require("lspconfig")
         lspconfig.lua_ls.setup({})
         lspconfig.clangd.setup({})

         vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
         vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Show definition" })
         vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Show decleration " })
         vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Show code actions" })
      end,
   },
}
