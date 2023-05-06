require("yq.base") -- General Settings
require("yq.highlights") -- Colourscheme and other highlights
require("yq.maps") -- Keymaps
require("yq.plugins") -- Plugins
require("yq.bootstrap") -- Packer Auto-Installer


vim.cmd [[colorscheme desert]]
vim.cmd [[autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync
]]

