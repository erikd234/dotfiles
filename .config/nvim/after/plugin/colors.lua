require("catppuccin").setup({
    transparent_background = false,
    integrations = {
        cmp = true,
        nvimtree = true,
        treesitter = true,
        harpoon = true,
        mason = true,
        nvim_surround = true,
    },
})

vim.cmd.colorscheme "catppuccin" --"catppuccin-latte"
