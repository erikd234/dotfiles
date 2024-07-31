require("catppuccin").setup({
    transparent_background = true,
    integrations = {
        cmp = true,
        nvimtree = true,
        treesitter = true,
        harpoon = true,
        mason = true,
        nvim_surround = true,
    },
})

vim.cmd.colorscheme "catppuccin"
