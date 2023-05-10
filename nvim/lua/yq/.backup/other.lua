
-- find files with ripgrep including gitignored (removed since it is kindof redundant with the project_files)
-- key_map(
--   "n",
--   "ff",
--   [[<Cmd>lua require'telescope.builtin'.find_files({find_command={'fd','--no-ignore-vcs'}, require('telescope.themes').get_cursor({})})<CR>]]
-- )

    -- navigation --
    -- use({
    --     'phaazon/hop.nvim',
    --     branch = 'v2.0',
    --     config = function()
    --     require'hop'.setup {}
    --     end
    --     })
    -- use({"ggandor/leap.nvim", 
    --     require('leap').add_default_mappings()
    --     })
	-- use("PotatoesMaster/i3-vim-syntax")
    -- use('caenrique/buffer-term.nvim') -- removed since tiggleterm is much better
    -- use "b0o/incline.nvim"
	-- use("nvim-orgmode/orgmode")
	-- use({ "numToStr/FTerm.nvim" })
    -- use("bytesnake/vim-graphical-preview")
    -- use({'samodostal/image.nvim',
    --     config = function()
    --     require('image').setup {
    --       render = {
    --         min_padding = 5,
    --         show_label = true,
    --         use_dither = true,
    --         foreground_color = false,
    --         background_color = false
    --       },
    --       events = {
    --         update_on_nvim_resize = true,
    --       },
    --     }
    --     end})
    -- fine cmdline (useful)
    -- use {
    --     'VonHeikemen/fine-cmdline.nvim',
    --     requires = {
    --     {'MunifTanjim/nui.nvim'}
    --     }
    -- }
	-- use({
	-- 	"nvim-telescope/telescope-media-files.nvim",
	-- 	config = function()
	-- 		require("telescope").load_extension("media_files")
	-- 	end,
	-- })
	-- use({
	-- 	"nvim-telescope/telescope.nvim",
	-- 	tag = "0.1.0",
	-- 	requires = { { "nvim-lua/plenary.nvim" } },
	-- })
	-- use("nvim-telescope/telescope-file-browser.nvim")
    -- use('kevinhwang91/rnvimr') -- ranger vim plugin
    -- display or preview pictures in terminal
    -- use("mattn/libcallex-vim")
    -- use({'edluffy/hologram.nvim', config = function()
    --     require('hologram').setup{
    --         auto_display = true 
    --         -- WIP automatic markdown image display, may be prone to breaking
    --     } 
    -- end})
    -- use('jose-elias-alvarez/null-ls.nvim')
    -- prettier for lua (both pkgs are needed)


-- cmd('syntax on')
-- vim.api.nvim_command('filetype plugin indent on')
-- Preserve view while jumping
-- BUG This option causes an error!
-- o.jumpoptions = 'view'

-- BUG: this won't update the search count after pressing `n` or `N`
-- When running macros and regexes on a large file, lazy redraw tells neovim/vim not to draw the screen
-- o.lazyredraw = true

-- Better folds (don't fold by default)
-- o.foldmethod = 'indent'
-- o.foldlevelstart = 99
-- o.foldnestmax = 3
-- o.foldminlines = 1
-- o.backupdir = '/tmp/'
-- o.directory = '/tmp/'
-- o.undodir = '/tmp/'
-- o.background = 'dark'

-- Do not save when switching buffers
-- o.hidden = true
-- require("yq.highlights") -- Colourscheme and other highlights
-- require("yq.bootstrap") -- Packer Auto-Installer
-- require("yq.null-ls") -- Packer Auto-Installer
--
-- Load recent sessions
-- map("n", "<leader>sl", "<CMD>SessionLoad<CR>")

-- map("n", "<leader>fs", "<CMD>Telescope file_browser<CR>")
-- find word in the current buffer
-- map("n", "<leader>fb", "<CMD>Telescope buffers<CR>")
-- find word in the current file and other files under the same director
-- change the highlight gscheme
--
-- config for buffer term
-- local buffer_term = require('buffer-term')
-- buffer_term.setup() -- default config
-- vim.keymap.set('t', '<Esc>', '<C-\\><C-n><CMD>b<CR>') -- terminal mode by link esc to exit
-- vim.keymap.set({ 'n', 't'}, '<C-s>', buffer_term.toggle_last)
-- vim.keymap.set({ 'n'}, '<C-s>', function() buffer_term.toggle('s') end)
--
-- toggle terminal
-- map("n", "<C-z>", "<CMD>ToggleTerm<CR>")
-- map("n", "<C-z>", "<C-Bslash><C-n><CMD>ToggleTerm<CR>")
-- map("n", "<C-z>", "<C-Bslash><C-n><CMD>ToggleTerm<CR>")

-- find files including gitignored
-- map("n", ",f", "<CMD>Telescope find_files theme=get_cursor <CR>")
-- map("n", "<leader>of", "<CMD>Telescope oldfiles<CR>")
-- map("n", "<leader>f", "<CMD>Telescope find_files<CR>")
-- map("n", "<leader>h", "<CMD>Telescope help_tags<CR>")
-- map("n", "<leader>w", "<CMD>Telescope live_grep<CR>")

-- -- find files (cursor move to the beginning)
-- map("n", "ff","[[<Cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({layout_strategy='horizontal',layout_config={width=0.8, height=0.9}}))<CR>]],")

-- -- find project files (cursor move to the beginning)
-- map("n", "fp","[[<Cmd>lua require'yq.telescope'.project_files()<CR>]],")

-- -- live grep (cursor move to the beginning)

-- map("n", "fw","[[<Cmd>lua require'telescope.builtin'.live_grep(require('telescope.themes').get_dropdown({layout_strategy='horizontal',layout_config={width=0.8, height=0.9}}))<CR>]]")


-- -- Help tags (cursor move to the beginning)
-- map("n", "fh", "[[<Cmd>lua require'telescope.builtin'.help_tags({require('telescope.themes').get_dropdown({layout_strategy='horizontal',layout_config={width=0.8, height=0.9}}), results_title='Help Results'})<CR>]]")
-- -- Old files (cursor move to the beginning)
-- map("n", "fo","[[<Cmd>lua require'telescope.builtin'.oldfiles({require('telescope.themes').get_dropdown({layout_strategy='horizontal',layout_config={width=0.8, height=0.9}}), prompt_title=':oldfiles', results_title='Old Files'})<CR>]]")
-- -- find media file ((cursor move to the beginning))
-- map("n", "fm","[[<Cmd>lua require('telescope').extensions.media_files.media_files({require('telescope.themes').get_dropdown({layout_strategy='horizontal',layout_config={width=0.8, height=0.9}})})<CR>]]")

