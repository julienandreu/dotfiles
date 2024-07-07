vim.g.mapleader = " "
vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Git
vim.keymap.set("n", "<leader>gb", "<CMD>GitBlameToggle<CR>", { desc = "Git blame toggled" })

-- Telescope
vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", {})
vim.keymap.set("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", {})
vim.keymap.set("n", "<leader>fb", "<CMD>Telescope buffers<CR>", {})
vim.keymap.set("n", "<leader>fh", "<CMD>Telescope help_tags<CR>", {})
vim.keymap.set("n", "<leader>fu", "<CMD>Telescope lsp_references<CR>", {})
vim.keymap.set("n", "<leader>fd", "<CMD>Telescope lsp_definitions<CR>", {})
vim.keymap.set("n", "<leader>fds", "<CMD>Telescope lsp_document_symbols<CR>", {})
vim.keymap.set("n", "<leader>fws", "<CMD>Telescope lsp_workspace_symbols<CR>", {})
