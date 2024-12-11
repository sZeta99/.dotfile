-- Plugin to costumize the colors of the IDE
return {
    "rebelot/kanagawa.nvim",
    lazy = false, -- load the plugin immediately or set to true to load lazily
    priority = 1000, -- ensures it loads before other plugins if necessary
    config = function()
        require("kanagawa").setup({
            compile = true,             -- Enable compilation for faster startup
            undercurl = true,           -- Enable undercurls
            commentStyle = { italic = true },
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
            transparent = false,        -- Keep background color
            dimInactive = false,        -- No dimming of inactive windows
            terminalColors = true,      -- Enable terminal colors
            theme = "wave",             -- Default theme
            background = {
                dark = "dragon",        -- Use 'dragon' theme for dark mode
                light = "lotus",        -- Use 'lotus' theme for light mode
            },
            overrides = function(colors)
                return {
                    NormalFloat = { bg = "none" },
                    FloatBorder = { bg = "none" },
                    PmenuSel = { bg = colors.theme.ui.bg_p2, fg = "NONE" },
                }
            end,
        })

        -- Apply the colorscheme
        vim.cmd("colorscheme kanagawa")
    end,
}
