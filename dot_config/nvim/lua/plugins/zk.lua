return {
	"zk-org/zk-nvim",
	opts = {
		picker = "snacks_picker",
	},
	ft = "markdown",
	keys = {
		{
			"<leader>wn",
			"<CMD>ZkNew { title = vim.fn.input('Title: ') }<CR>",
			desc = "[W]iki [N]ew",
		},
		{
			"<leader>wd",
			"<CMD>ZkNew { dir = 'journal/daily' }<CR>",
			desc = "[W]iki [D]aily",
		},
		{
			"<leader>wo",
			"<CMD>ZkNotes { sort = { 'modified' }, excludeHrefs = {'journal'} }<CR>",
			desc = "[W]iki [O]pen",
		},
		{
			"<leader>wj",
			"<CMD>ZkNew { title = vim.fn.input('Title: ') }<CR>",
			desc = "[W]iki [J]ournal",
		},
		{
			"<leader>wt",
			"<CMD>ZkTags<CR>",
			desc = "[W]iki [T]ags",
		},
		{
			"<leader>wq",
			"<CMD>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') }, excludeHrefs = { 'journal' } }<CR>",
			desc = "[W]iki [Q]uery",
		},
		{
			"<leader>wf",
			"<CMD>ZkNew { dir = vim.fn.input('Directory: '), title = vim.fn.input('Title: ') }<CR>",
			desc = "[W]iki note in [f]older",
		},
		{
			"<leader>wi",
			"<CMD>ZkInsertLink<CR>",
			desc = "[W]iki [I]nsert link",
		},
		{
			"<leader>wi",
			":'<,'>ZkInsertLinkAtSelection<CR>",
			desc = "[W]iki [I]nsert link (selection)",
			mode = "x",
		},
	},
}
