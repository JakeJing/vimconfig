-- define map function for key mappingold
local function map(m, k, v)
vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- fine cmdline
-- map('n', ':', '<cmd>FineCmdline<CR>') -- removed since the popup window is confusing for multiple panels

-- to save or overwrite a vim session via mksession! and quite
map("n", "ms", ":mks!<CR>ZZ")

-- Mimic shell movements
-- map({"i", "n"}, "<C-E>", "<ESC>A")
-- map({"i", "n"}, "<C-A>", "<ESC>I")
map("n", "<C-E>", "$")
map("n", "<C-A>", "0")
map("i", "<C-E>", "<ESC>A")
map("i", "<C-A>", "<ESC>I")

-- map alt key + H/L to move forward and backward by words by using the real character generated
map("n", "˙", "<S-B>") -- alt-h map to one word start
map("n", "¬", "<S-E>") -- alt-l map to one word end
map("i", "˙", "<ESC><S-B>i") -- alt-h map to one word start <insrt mode>
map("i", "¬", "<ESC><S-E>a") -- alt-l map to one word end <insert mode>
map("i", "∆", "<Left>")  -- alt-j map to move left
map("i", "˚", "<Right>") -- alt-k map to move right

-- map esc to exit the edit in terminal mode
-- map({"t"}, "<ESC>", "<C-\\><C-N>")

-- remap the switch between files and delete current file in the buffer
-- map({"n", "i"}, "<C-W><C-W>", "<C-6>")
map({"n", "i"}, "<C-W><C-W>", ":bnext<CR>")
map({"n", "i"}, "<C-X>", "<CMD>bd!<CR>") -- delete and force delete file from buffer if no new save

-- remap to resize the splitted window
map("n", "=", "<C-W>>")
map("n", "-", "<C-W><")

-- delete one word at the current location
map("n", "dw", "daw")
map("n", "cw", "caw")

-- press S is aliased to replace all
-- map("n", "<S-s>", ":%s//g<left><left>")
-- map("n", "S", ":%s//g<left><left>")

-- tabvifm keymapping
-- map("n", "vf", "<CMD>TabVifm<CR>")


