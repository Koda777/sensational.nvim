local M = {}

function M.config()
	if not vim.fn.has("gui_running") and vim.fn.t_Co < 256 then
		return
	end
	-- Clear highlighting
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.g.colors_name = "sensational"
end

return M
