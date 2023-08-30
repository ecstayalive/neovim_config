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
    {"folke/edgy.nvim",event = "VeryLazy",opts = {}},
    -- startup appearance
    {
      "startup-nvim/startup.nvim",
      requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    },
    -- explorer
    {
      "nvim-neo-tree/neo-tree.nvim",
      requires = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
      },
    },
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
    -- code auto-complete
    {"neovim/nvim-lspconfig"},
    {"neoclide/coc.nvim"},
    -- code highlight
    {"nvim-treesitter/nvim-treesitter"},
    -- auto pair
    {"windwp/nvim-autopairs", event= "InsertEnter", opts={}},
})

-- load editor configuration
require("init")
