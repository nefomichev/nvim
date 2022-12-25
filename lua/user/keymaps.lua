local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<leader><Up>", ":resize -2<CR>", opts)
keymap("n", "<leader><Down>", ":resize +2<CR>", opts)
keymap("n", "<leader><Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<leader><Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>b", ":new<CR>", opts)
keymap("n", "<leader>B", ":bd<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual Block --
-- Move text up and down
-- or left and right
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<leader>h", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<leader>j", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<leader>k", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<leader>l", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope --
keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)

