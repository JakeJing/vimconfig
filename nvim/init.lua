---------------------------------------------------------------------------
-- This init.lua is used to load the required pkgs, settings and keymaps.
-- All pkg-specific setups are located in **after/plugin**
---------------------------------------------------------------------------

require("yq.base") -- General Settings (e.g., options and neovide)
require("yq.maps") -- Keymaps
require("yq.plugins") -- Plugins
require("yq.telescope") -- Installer (TODO: remove the folder to after/plugin)

-- set the colorscheme
vim.cmd [[colorscheme desert]]
-- auto run prettier
vim.cmd [[autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync]]

