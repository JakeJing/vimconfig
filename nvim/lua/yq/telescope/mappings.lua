local function key_map(m, k, v)
    vim.api.nvim_set_keymap(m, k, v, { noremap = true, silent = true })
end

-- local key_map = vim.api.nvim_set_keymap
-- TELESCOPE keymaps 🔭 --
-- command palette
key_map(
  "n",
  "<space>k",
  [[<Cmd>lua require('telescope').extensions.command_palette.command_palette()<CR>]])

-----------------------------------------------------------------
----------------- Remapped keybindings for Telescope ------------
-----------------------------------------------------------------

-- use user-defined function of project_files in telescope/init.lua to search files under the project
key_map("n", "ff", [[<Cmd>lua require'yq.telescope'.project_files()<CR>]])

-- find oldfiles
key_map(
  "n",
  "fo",
  [[<Cmd>lua require'telescope.builtin'.oldfiles({prompt_title=':oldfiles', results_title='Old Files', path_display={"shorten"}, layout_strategy = 'horizontal', layout_config = { width = 0.95, preview_width = 0.65, height = 0.9}})<CR>]],
  { noremap = true, silent = true }
)

-- Live grep all matched words recursively, including hidden files 
key_map("n", "fa", [[<Cmd>lua require'telescope.builtin'.live_grep()<CR>]])

-- resume (last picker)
key_map("n", "fr", [[<Cmd>lua require'telescope.builtin'.resume()<CR>]])

--  Grep words in the current file
key_map(
  "n",
  "fw",
  [[<Cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find({results_title=' Current Doc', grep_open_files=true, layout_strategy = 'horizontal', layout_config = { width = 0.9, preview_width = 0.75, height = 0.9}})<CR>]]
)

-- Grep words in the opened files in the buffer
key_map(
  "n",
  "fb",
  [[<Cmd>lua require('telescope.builtin').live_grep({results_title=' Current Buffer', grep_open_files=true, layout_strategy = 'horizontal', layout_config = { width = 0.9, preview_width = 0.75, height = 0.9}})<CR>]]
)

-- open available commands & run it
key_map(
  "n",
  "fc",
  [[<Cmd>lua require'telescope.builtin'.commands({results_title='Commands Results'})<CR>]]
)

-- list opened windows in the buffer
key_map(
  "n",
  "fl",
  [[<Cmd>lua require'telescope.builtin'.buffers({prompt_title = '', results_title='﬘', winblend = 3, layout_strategy = 'vertical', layout_config = { width = 0.60, height = 0.55 }})<CR>]]
)

-- find help tags
key_map(
  "n",
  "fh",
  [[<Cmd>lua require'telescope.builtin'.help_tags({results_title='Help Results'})<CR>]]
)

-- find the key mapping
key_map(
  "n",
  "fk",
  [[<Cmd>lua require'telescope.builtin'.keymaps({results_title='Key Maps Results'})<CR>]]
)

-- Keybindings for colorscheme
key_map("n", "<leader>c", "<CMD>Telescope colorscheme<CR>")

-- search Brave bookmarks & go
key_map(
  "n",
  "<space>b",
  [[<Cmd>lua require('telescope').extensions.bookmarks.bookmarks()<CR>]]
)

---------------------------------------------------
-----------Other keymappings ------------------------
---------------------------------------------------

-- Search through your Neovim related todos
key_map("n", "<leader>st", ":lua require'yq.telescope'.search_todos()<CR>")


-- open zoxide list
key_map(
  "n",
  "<leader>z",
  ":lua require'telescope'.extensions.zoxide.list{results_title='Z Directories', prompt_title='Z Prompt'}<CR>"
)

-- telescope-repo
key_map("n", "<leader>rl", [[<Cmd>lua require'yq.telescope'.repo_list()<CR>]])

-- telescope notify history
key_map(
  "n",
  "<leader>nh",
  [[<Cmd>lua require('telescope').extensions.notify.notify({results_title='Notification History', prompt_title='Search Messages'})<CR>]]
)

-- LSP!
-- show LSP implementations
key_map(
  "n",
  "<leader>ti",
  [[<Cmd>lua require'telescope.builtin'.lsp_implementations()<CR>]]
)

-- show LSP definitions
key_map(
  "n",
  "<leader>td",
  [[<Cmd>lua require'telescope.builtin'.lsp_definitions({layout_config = { preview_width = 0.50, width = 0.92 }, path_display = { "shorten" }, results_title='Definitions'})<CR>]])
-- show DOCUMENT Symbols
key_map(
  "n",
  ",ds",
  [[<Cmd>lua require'telescope.builtin'.lsp_document_symbols()<CR>]]
)

-- git telescope goodness
-- git_branches
key_map(
  "n",
  "<space>gb",
  [[<Cmd>lua require'telescope.builtin'.git_branches({prompt_title = ' ', results_title='Git Branches'})<CR>]]
)
-- git_bcommits - file scoped commits with diff preview. <C-V> for vsp diff to parent
key_map(
  "n",
  "<space>gc",
  [[<Cmd>lua require'telescope.builtin'.git_bcommits({prompt_title = '  ', results_title='Git File Commits'})<CR>]]
)
-- git_commits (log) git log
key_map("n", "gl", [[<Cmd>lua require'telescope.builtin'.git_commits()<CR>]])
-- git_status - <tab> to toggle staging
key_map("n", "gs", [[<Cmd>lua require'telescope.builtin'.git_status()<CR>]])

-- registers picker
key_map("n", "<space>r", [[<Cmd>lua require'telescope.builtin'.registers()<CR>]])

-- show Workspace Diagnostics
key_map("n", ",d", [[<Cmd>lua require'telescope.builtin'.diagnostics()<CR>]])

-- Telescopic approach for FZF's :BLines
key_map(
  "n",
  ",bf",
  [[<Cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find()<CR>]]
)


key_map(
  "n",
  ",m",
  [[<Cmd>lua require'telescope.builtin'.marks({results_title='Marks Results'})<CR>]]
)

-- find files with gitfiles & fallback on find_files
key_map("n", ",<space>", [[<Cmd>lua require'yq.telescope'.project_files()<CR>]])
-- browse, explore and create notes
key_map("n", ",n", [[<Cmd>lua require'yq.telescope'.browse_notes()<CR>]])
-- Explore files starting at $HOME
key_map("n", ",e", [[<Cmd>lua require'yq.telescope'.file_explorer()<CR>]])
-- Browse files from cwd - File Browser
key_map(
  "n",
  ",fb",
  [[<Cmd>lua require'telescope'.extensions.file_browser.file_browser()<CR>]]
)

-- -- grep word under cursor
-- key_map("n", "<leader>g", [[<Cmd>lua require'telescope.builtin'.grep_string()<CR>]])
-- -- grep word under cursor - case-sensitive (exact word) - made for use with Replace All - see <leader>ra
-- key_map(
--   "n",
--   "<leader>G",
--   [[<Cmd>lua require'telescope.builtin'.grep_string({word_match='-w'})<CR>]],
--   { noremap = true, silent = true }
-- )

-- find notes
key_map("n", "<leader>n", [[<Cmd>lua require'yq.telescope'.find_notes()<CR>]])
-- search notes
key_map("n", "<space>n", [[<Cmd>lua require'yq.telescope'.grep_notes()<CR>]])
-- Find files in config dirs
key_map("n", "<space>e", [[<Cmd>lua require'yq.telescope'.find_configs()<CR>]])
-- greg for a string
key_map("n", "<space>g", [[<Cmd>lua require'yq.telescope'.grep_prompt()<CR>]])
-- find or create neovim configs
key_map("n", "<leader>nc", [[<Cmd>lua require'yq.telescope'.nvim_config()<CR>]])

-- Github issues
key_map("n", "<leader>is", [[<Cmd>lua require'yq.telescope'.gh_issues()<CR>]])
-- github Pull Requests - PRs
key_map("n", "<leader>pr", [[<Cmd>lua require'yq.telescope'.gh_prs()<CR>]])

-- neoclip
key_map(
  "n",
  "<C-n>",
  [[<Cmd>lua require('telescope').extensions.neoclip.default()<CR>]]
)

-- grep the Neovim source code with word under cursor → cword - just z to Neovim source for other actions
key_map("n", "<leader>ns", [[<Cmd>lua require'yq.telescope'.grep_nvim_src()<CR>]])
-- End Telescope maps
