-- ┌─────────────────┐
-- │ Custom mappings │
-- └─────────────────┘
--
-- This file contains definitions of custom general and Leader mappings.

-- General mappings ===========================================================

local nmap = function(lhs, rhs, desc)
	vim.keymap.set("n", lhs, rhs, { desc = desc })
end

-- Paste linewise before/after current line
-- Usage: `yiw` to yank a word and `]p` to put it on the next line.
nmap("[p", '<CMD>exe "put! " . v:register<CR>', "Paste Above")
nmap("]p", '<CMD>exe "put "  . v:register<CR>', "Paste Below")
vim.keymap.set({ "n", "x", "s", "o", "t", "i" }, "<A-,>", "<CMD>BufferPrevious<CR>", { desc = "Previous buffer" })
vim.keymap.set({ "n", "x", "s", "o", "t", "i" }, "<A-.>", "<CMD>BufferNext<CR>", { desc = "Next buffer" })
vim.keymap.set({ "n", "x", "s", "o", "t", "i" }, "<A-c>", "<CMD>BufferClose!<CR>", { desc = "Close Buffer" })
vim.keymap.set({ "n", "x", "s", "o", "t", "i" }, "<A-d>", "<CMD>BufferDelete!<CR>", { desc = "Delete Buffer" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set({ "n", "x", "s", "o", "t", "i" }, "<M-w>", function()
	require("nvim-window").pick()
end, { desc = "Jump to window" })

-- Picker mappings

nmap("<C-c>", function()
	Snacks.picker.registers()
end, "Search registers")

nmap("<leader>R", function()
	Snacks.picker.cliphist()
end, "Search clipboard history")

nmap("<leader>u", function()
	Snacks.picker.undo()
end, "Search undo history")

nmap("<C-l>", function()
	Snacks.picker.lines()
end, "Search lines")

nmap("sb", function()
	Snacks.picker.buffers()
end, "Search buffers")

nmap("se", function()
	Snacks.picker.icons()
end, "Search emojis and icons")

nmap("sg", function()
	Snacks.picker.grep()
end, "Search grep")

nmap("sF", function()
	Snacks.picker.smart({ cwd = "/" })
end, "Search all files")

nmap("sf", function()
	Snacks.picker.smart()
end, "Search project files")

nmap("sr", function()
	Snacks.picker.recent()
end, "Search recent files")

nmap("sc", function()
	Snacks.picker.grep({ cwd = vim.fn.stdpath("config") })
end, "Search config")

nmap("sk", function()
	Snacks.picker.commands()
end, "Search commands")

nmap("sK", function()
	Snacks.picker.keymaps()
end, "Search keymaps")

nmap("sn", function()
	Snacks.picker.notifications()
end, "Search notifications")

-- LSP mappings

nmap("<leader>ld", function()
	Snacks.picker.diagnostics()
end, "Search diagnostics")
nmap("<leader>ls", function()
	Snacks.picker.lsp_workspace_symbols()
end, "Search symbols (workspace)")
nmap("<leader>lS", function()
	Snacks.picker.lsp_symbols()
end, "Search symbols (buffer)")
nmap("<leader>lt", function()
	Snacks.picker.todo_comments()
end, "Search ToDo comments")
nmap("<leader>lq", function()
	Snacks.picker.qflist()
end, "Search quickfix list")
nmap("<leader>lc", function()
	require("conform").format()
end, "Format file")
nmap("<leader>lr", function()
	vim.lsp.buf.rename()
end, "LSP rename")
nmap("<leader>lR", function()
	Snacks.picker.lsp_references()
end, "List references (cursor)")

nmap("<leader>li", function()
	vim.lsp.buf.implementation()
end, "Implementation")
nmap("<leader>lf", function()
	vim.lsp.buf.definition()
end, "Source definition")
nmap("<leader>lF", function()
	vim.lsp.buf.type_definition()
end, "Type definition")

-- Session manager =========================

local session_new = 'MiniSessions.write(vim.fn.input("Session name: "))'

nmap("<leader>Sd", '<CMD>lua MiniSessions.select("delete")<CR>', "Delete")
nmap("<leader>Sn", "<CMD>lua " .. session_new .. "<CR>", "New")
nmap("<leader>Sr", '<CMD>lua MiniSessions.select("read")<CR>', "Read")
nmap("<leader>Sw", "<CMD>lua MiniSessions.write()<CR>", "Write current")

-- Terminal ============================

nmap("<leader>th", "<CMD>horizontal term<CR>", "Terminal (horizontal)")
nmap("<leader>tv", "<CMD>vertical term<CR>", "Terminal (vertical)")
nmap("<leader>tb", "<CMD>term<CR>", "Terminal (buffer)")
