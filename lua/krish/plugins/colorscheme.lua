return {
    -- TokyoNight Theme
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        config = function()
            local transparent = false -- set to true if you would like to enable transparency

            local bg = "#011628"
            local bg_dark = "#011423"
            local bg_highlight = "#143652"
            local bg_search = "#0A64AC"
            local bg_visual = "#275378"
            local fg = "#CBE0F0"
            local fg_dark = "#B4D0E9"
            local fg_gutter = "#627E97"
            local border = "#547998"

            require("tokyonight").setup({
                style = "night",
                transparent = transparent,
                styles = {
                    sidebars = transparent and "transparent" or "dark",
                    floats = transparent and "transparent" or "dark",
                },
                on_colors = function(colors)
                    colors.bg = bg
                    colors.bg_dark = transparent and colors.none or bg_dark
                    colors.bg_float = transparent and colors.none or bg_dark
                    colors.bg_highlight = bg_highlight
                    colors.bg_popup = bg_dark
                    colors.bg_search = bg_search
                    colors.bg_sidebar = transparent and colors.none or bg_dark
                    colors.bg_statusline = transparent and colors.none or bg_dark
                    colors.bg_visual = bg_visual
                    colors.border = border
                    colors.fg = fg
                    colors.fg_dark = fg_dark
                    colors.fg_float = fg
                    colors.fg_gutter = fg_gutter
                    colors.fg_sidebar = fg_dark
                end,
            })

            vim.cmd("colorscheme tokyonight") -- Set TokyoNight as the default colorscheme
        end,
    },
    --
    --   -- Gruvbox Theme
    --   {
    --     "ellisonleao/gruvbox.nvim",
    --     priority = 1000, -- High priority ensures themes load early
    --     opts = {
    --       contrast = "soft", -- Can be "hard", "soft", or "medium"
    --       transparent_mode = false, -- Transparency
    --     },
    --     config = function(_, opts)
    --       require("gruvbox").setup(opts)
    --
    --       -- Uncomment the next line to set Gruvbox as the default theme
    --       -- vim.cmd("colorscheme gruvbox")
    --     end,
    --   },
    --
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 10000,
        config = function()
            require("catppuccin").setup({ flavor = "mocha" }) -- Choose flavor
            -- vim.cmd("colorscheme catppuccin")
        end,
    },
    --
    --
    --
    -- {
    --   "EdenEast/nightfox.nvim",
    --   priority = 1000,
    --   config = function()
    --     require("nightfox").setup({ options = { transparent = false } })
    --     vim.cmd("colorscheme nightfox")
    --   end,
    -- },
    --
    --
    --
    -- -- rose pine main look sexy
    -- {
    --   "rose-pine/neovim",
    --   name = "rose-pine",
    --   priority = 1000,
    --   config = function()
    --     require("rose-pine").setup({ variant = "moon" })
    --     vim.cmd("colorscheme rose-pine")
    --   end,
    -- },
    --
    -- -- kanagawava waves is good
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        config = function()
            require("kanagawa").setup({
                transparent = false,
                colors = { theme = { all = { ui = { bg_gutter = "none" } } } },
            })
            -- vim.cmd("colorscheme kanagawa")
        end,
    },
    --
    --
    --
    --
    -- {
    --   "sainnhe/gruvbox-material",
    --   priority = 1000,
    --   config = function()
    --     vim.g.gruvbox_material_background = "medium"
    --     vim.g.gruvbox_material_enable_bold = 1
    --     vim.g.gruvbox_material_enable_italic = 1
    --     vim.cmd("colorscheme gruvbox-material")
    --   end,
    -- },
    --
    -- {
    --   "shaunsingh/nord.nvim",
    --   priority = 1000,
    --   config = function()
    --     vim.cmd("colorscheme nord")
    --   end,
    -- }

    -- {  vim.cmd("colorscheme catppuccin-mocha")}
    -- carbon fox looks nice too
}
