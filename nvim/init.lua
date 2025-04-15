-- lazy nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- load lazy nvim
require("lazy").setup({
    -- Eidtor appearance settings
    -- themes
    {"olimorris/onedarkpro.nvim"},
    {"nvim-lualine/lualine.nvim"},
    {"nvim-tree/nvim-web-devicons", opt=true},
    -- {"folke/edgy.nvim",event = "VeryLazy",opts = {}},
    -- startup appearance
    {
      "startup-nvim/startup.nvim",
      requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    },
    {"nvim-telescope/telescope.nvim"},
    -- explorer
    {
      "nvim-neo-tree/neo-tree.nvim",
      requires = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
      },
    },
    -- terminal
    {"akinsho/toggleterm.nvim", version = "*", config = true},
    -- beautify notify
    {"MunifTanjim/nui.nvim"},
    {"rcarriga/nvim-notify"},
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
        -- add any options here
        },
        requires = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify",
        }
    },
    {"RRethy/vim-illuminate"},
    {"nvim-lua/plenary.nvim"},
    -- Eidtor edit settings
    -- git
    {"lewis6991/gitsigns.nvim"},
    -- auto save files
    {"Pocco81/auto-save.nvim"},
    -- code auto-complete && lsp
    -- Auto pairs
    {
      'windwp/nvim-autopairs',
      event = "InsertEnter",
      config = true
      -- use opts = {} for passing setup options
      -- this is equalent to setup({}) function
    },
    -- Auto-completion engine
    {
      "hrsh7th/nvim-cmp",
      dependencies = {
        -- nvim-cmp
        "hrsh7th/cmp-nvim-lsp", -- { name = nvim_lsp }
        "hrsh7th/cmp-buffer",   -- { name = "buffer" },
        "hrsh7th/cmp-path",     -- { name = "path" }
        "hrsh7th/cmp-cmdline",  -- { name = "cmdline" }
        "hrsh7th/nvim-cmp",
        -- vsnip
        "hrsh7th/cmp-vsnip",    -- { name = "vsnip" }
        "hrsh7th/vim-vsnip",
        "rafamadriz/friendly-snippets",
        -- lspkind
        "onsails/lspkind-nvim",
      },
    },
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},
    {"neovim/nvim-lspconfig"},
    {"glepnir/lspsaga.nvim"},
    {
      "stevearc/aerial.nvim",
      opts = {},
      -- Optional dependencies
      dependencies = {
         "nvim-treesitter/nvim-treesitter",
         "nvim-tree/nvim-web-devicons"
      },
    },
    -- code highlight
    {"nvim-treesitter/nvim-treesitter"},
})
-- load editor configuration
require("init")
