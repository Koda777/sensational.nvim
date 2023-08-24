local cmd = vim.cmd
local g = vim.g
local fn = vim.fn

if not fn.has("gui_running") and vim.fn.t_Co < 256 then
	return
end

-- Clear highlighting
cmd("hi clear")
if fn.exists("syntax_on") then
	cmd("syntax reset")
end
g.colors_name = "sensational"

local highlight = {
	-- Background color
	"Normal guibg=#1D1E20",
	"Identifier cterm=bold ctermfg=14 guifg=#8CB4B4",
	-- Function name
	"Function cterm=bold ctermfg=14 guifg=#FFE3DC",
	-- Delimiter ({}, [], (), <>})
	"Delimiter cterm=bold ctermfg=14 guifg=White",
	-- Operator, name function ect
	"Comment cterm=bold ctermfg=14 guifg=#8CB4B4",
	-- color function type
	"Statement cterm=bold ctermfg=14 guifg=#5B677F",
	-- Window open
	"Pmenu guibg=#1D1E20",
	-- div tab ect
	"Special guifg=#8CB4B4",
	-- import, from module ect
	"PreProc guifg=#DEC07F",
	-- Logo folder color
	"Title guifg=Yellow",
	"ColorColumn guifg=Red",
	"LineNr guifg=#8CB4B4",
	"CursorLineNr guifg=#669B9B",
}

for _, v in ipairs(highlight) do
	cmd("hi! " .. v)
end
