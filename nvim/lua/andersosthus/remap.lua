vim.g.mapleader = " "
vim.keymap.set("i", "jk", "<Esc>") --[[ jk to exit Insert mode --]]
vim.keymap.set("i", "<C-c>", "<Esc>") --[[ ctrl+c to exit insert mode --]]

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) --[[ file explorer --]]

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") --[[ move selection up --]]
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") --[[ move selection down --]]

vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("n", "J", "mzJ`z") --[[ move the line below up to the end of the current line --]]
vim.keymap.set("n", "<C-d>", "<C-d>zz") --[[ jump half-page down keeping cursor in the middle --]]
vim.keymap.set("n", "<C-u>", "<C-u>zz") --[[ jump half-page up keeping cursor in the middle --]]
vim.keymap.set("n", "n", "nzzzv") --[[ when going to next search result, keep cursor in the middle --]]
vim.keymap.set("n", "N", "Nzzzv") --[[ when going to prev search result, keep cursor in the middle --]]

vim.keymap.set("x", "<leader>p", "\"_dP") --[[ overwrite in visual mode keeping buffer --]]

vim.keymap.set("n", "<leader>y", "\"+y") --[[ yank to system clipboard --]]
vim.keymap.set("v", "<leader>y", "\"+y") --[[ yank to system clipboard --]]
vim.keymap.set("n", "<leader>Y", "\"+Y") --[[ yank to system clipboard --]]

vim.keymap.set("n", "<leader>d", "\"_d") --[[ delete to void --]]
vim.keymap.set("v", "<leader>d", "\"_d") --[[ delete to void --]]

vim.keymap.set("n", "Q", "<nop>") --[[ disable capital Q --]]
vim.keymap.set("n", "<leader>f", function() --[[ lsp format --]]
    vim.lsp.buf.format()
end)

--[[ quicklist navigation --]]
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) --[[ replace current word --]]
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) --[[ add executable bit to current file --]]

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/andersosthus/packer.lua<CR>") --[[ edit plugins --]]
