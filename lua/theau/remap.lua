vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc = "Open file explorer"})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- Trouble
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)

-- TS node action
vim.keymap.set({ "n" }, "K", require("ts-node-action").node_action, { desc = "Trigger Node Action" })


-- Todo Comments
vim.keymap.set("n", "<leader>tl", "<cmd>TodoTrouble<CR>", {desc = "Open all todos list"})
vim.keymap.set("n", "<leader>ts", "<cmd>TodoTelescope<CR>", {desc = "Search in all todos"})


-- Nvim Tree
vim.keymap.set("n", "<leader>op", "<cmd>NvimTreeToggle<cr>",
  {silent = true, noremap = true}
)

