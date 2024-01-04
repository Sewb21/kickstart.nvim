vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.jsx", "*.ts", "*.tsx", "*.css", "*.scss", "*.json", "*.md", "*.html", "*.svelte" },
  callback = function()
    vim.cmd("Neoformat prettier")
  end,
})

return  {
    "sbdchd/neoformat"
}
