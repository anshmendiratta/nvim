local modules = {
	"options",
	"plugins",
	"mappings",
}

for _, module in ipairs(modules) do
	local ok, err = pcall(require, module)
	if not ok then
		print("Error: calling" .. err)
	end
end

vim.cmd.colorscheme("gruber-darker")

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

vim.api.nvim_create_user_command("Format", function(args)
	local range = nil
	if args.count ~= -1 then
		local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
		range = {
			start = { args.line1, 0 },
			["end"] = { args.line2, end_line:len() },
		}
	end

	require("conform").format({ async = true, lsp_fallback = true, range = range })
end, { range = true })
