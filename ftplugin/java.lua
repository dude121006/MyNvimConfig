local config = {
	cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls") },
	root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
}
require("jdtls").start_or_attach(config)

-- local bufopts = { noremap = true, silent = true, buffer = 0 }
-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
-- vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
-- vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
-- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)

vim.keymap.set("n", "<leader>jo", "<Cmd>lua require'jdtls'.organize_imports()<CR>", { desc = "Organize Imports" })
vim.keymap.set("n", "<leader>jrv", "<Cmd>lua require('jdtls').extract_variable()<CR>", { desc = "Extract Variable" })
vim.keymap.set(
	"v",
	"<leader>jrv",
	"<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>",
	{ desc = "Extract Variable" }
)
vim.keymap.set("n", "<leader>jrc", "<Cmd>lua require('jdtls').extract_constant()<CR>", { desc = "Extract Constant" })
vim.keymap.set(
	"v",
	"<leader>jrc",
	"<Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>",
	{ desc = "Extract Constant" }
)
vim.keymap.set(
	"v",
	"<leader>jrm",
	"<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>",
	{ desc = "Extract Method" }
)
