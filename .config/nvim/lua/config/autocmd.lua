-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

-- Customize vim terminal
vim.api.nvim_create_autocmd('TermOpen', {
	group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})

-- Open a terminal at the bottom
vim.keymap.set('n', '<space>st', function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd 'J'
	vim.api.nvim_win_set_height(0, 15)
end)

-- Clear all registers
vim.api.nvim_create_user_command('ClearRegisters', function()
	-- a-z
	for i = 97, 122 do
		pcall(vim.fn.setreg, string.char(i), {})
	end
	-- A-Z
	for i = 65, 90 do
		pcall(vim.fn.setreg, string.char(i), {})
	end
	-- 0-9
	for i = 48, 57 do
		pcall(vim.fn.setreg, string.char(i), {})
	end
	-- Special registers
	pcall(vim.fn.setreg, '"', {}) -- unnamed
	pcall(vim.fn.setreg, '-', {}) -- small delete
	pcall(vim.fn.setreg, '/', {}) -- search
	print 'Registers cleared!'
end, {})
