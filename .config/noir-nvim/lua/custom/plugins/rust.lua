return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local lspconfig = require("lspconfig")

      -- Ensure the table for servers is initialized
      opts.servers = opts.servers or {}

      -- Add or update the rust-analyzer configuration
      opts.servers.rust_analyzer = {
        autostart = true,
        cmd = { "rust-analyzer" },
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = true,
            },
            checkOnSave = {
              command = "clippy",
            },
          },
        },
      }
    end,
} }
