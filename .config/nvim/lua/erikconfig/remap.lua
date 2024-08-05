
-- USED HEAVILY
vim.keymap.set("n","<C-s>", "<cmd>:w<cr>")
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- This makes my cursor go to the center when I page down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- these ones move highlighted text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- coppies whole line to buffer
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- coppies whole line to buffer
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "Q", "<nop>")
-- the best find replace feature ever
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--
-- I SHOULD PROBABLLY USE
--
-- deletes line below without moving cursor.
vim.keymap.set("n", "J", "mzJ`z")
-- deletes selected tect without putting it on the register!
vim.keymap.set("x", "<leader>p", [["_dP]])
-- deleted without going to buffer !! should use more.
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
--  make my current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
-- just a funny animation
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- jump around if there are errors?
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
