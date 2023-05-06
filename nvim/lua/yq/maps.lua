-- define map function for key mapping
local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- Mimic shell movements
map({"i", "n"}, "<C-E>", "<ESC>A")
map({"i", "n"}, "<C-A>", "<ESC>I")

-- map alt key on mac using the real character generated
map("n", "˙", "<S-B>")
map("n", "¬", "<S-W>")

-- remap the switch between files and delete current file in the buffer
map({"n", "i"}, "<C-W><C-W>", "<C-6>")
map({"n", "i"}, "<C-X>", "<CMD>bd<CR>") -- delete file from buffer

-- remap to resize the splitted window
map("n", "=", "<C-W>>")
map("n", "-", "<C-W><")

-- delete one word at the current location
map("n", "dw", "daw")
map("n", "cw", "caw")

-- press S is aliased to replace all
map("n", "<S-s>", ":%s//g<left><left>")
-- map("n", "S", ":%s//g<left><left>")

-- Keybindings for telescope
map("n", "<leader>o", "<CMD>Telescope oldfiles<CR>")
map("n", "<leader>f", "<CMD>Telescope find_files<CR>")
map("n", "<leader>x", "<CMD>Telescope colorscheme<CR>")
map("n", "<leader>h", "<CMD>Telescope help_tags<CR>")
map("n", "<leader>w", "<CMD>Telescope live_grep<CR>")

