vim.g.neoformat_try_node_exe = 1
vim.g.neoformat_only_msg_on_error = 1

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		vim.cmd("Neoformat")
	end,
}

)return  {
    "sbdchd/neoformat"
}
