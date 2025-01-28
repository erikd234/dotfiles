local lsp = require("lsp-zero")

lsp.preset("recommended")

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<Tab>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

-- delete that cursed enter key mapping
cmp_mappings['<CR>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})

local ls = require("luasnip")
ls.filetype_extend("templ",{"html"})
ls.filetype_extend("tsx",{"html"})



-- GOLANG SNIPPET HOTKEYS
-- Define a function to expand the 'ir' snippet
-- I found all the snippets that are handy in
-- /home/erik/.local/share/nvim/site/pack/packer/start/friendly-snippets/snippets/go.json
function _G.expand_ir_snippet()
    local ls = require("luasnip")
    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node
    -- the ir snippet for err nil check in go
    local snip = s("ir", {
      t("if err != nil {"),
      t({"", "\t"}), -- New line and tab
      i(1, "return "),
      i(2, "nil, "),
      i(3, "err"),
      t({"", "}"}), -- New line and closing brace
    })
    ls.snip_expand(snip)
end

vim.api.nvim_set_keymap('i', '<C-k>', '<cmd>lua expand_ir_snippet()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<cmd>lua expand_ir_snippet()<CR>', { noremap = true, silent = true })

vim.keymap.set({"n"}, "<leader>r", "<cmd>GoRename<cr>")
vim.keymap.set({"n"}, "<leader>f", "<cmd>GoFillStruct<cr>")
