-- Plugin for buffer exploration
return {
    "PhilRunninger/bufselect",
    lazy = false, -- load the plugin immediately or set to true to load lazily
    config = function()
        vim.keymap.set('n', '<leader>b', ':ShowBufferList<CR>', {
            noremap = true,
            silent = true,
            desc = "[B]uffer: Show buffer list"
        })
    end,
}

