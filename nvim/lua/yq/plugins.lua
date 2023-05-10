local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[
    augroup packer_user_config
      autocmd!
     autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup END
]])


packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Dashboard is a nice start screen for nvim
	use("glepnir/dashboard-nvim")

	-- Telescope
    use {'dhruvmanila/browser-bookmarks.nvim',  tag = '*',}
    use('jvgrootveld/telescope-zoxide')
    use("nvim-telescope/telescope-github.nvim")
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
    use {
      "AckslD/nvim-neoclip.lua",
      requires = {
        -- you'll need at least one of these
        -- {'nvim-telescope/telescope.nvim'},
        -- {'ibhagwan/fzf-lua'},
      },
      config = function()
        require('neoclip').setup()
      end,
    }
    use('cljoly/telescope-repo.nvim')
    use("kdheepak/lazygit.nvim")
	use({"nvim-telescope/telescope.nvim",
        config = function()
          require('telescope').setup{
            defaults = {
         },
      }
        -- require("telescope").load_extension("lazygit")
        end,
	})
    use{'tom-anders/telescope-vim-bookmarks.nvim'}
    use("MattesGroeger/vim-bookmarks")
    use {'nvim-telescope/telescope-ui-select.nvim' }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use("nvim-telescope/telescope-file-browser.nvim")
    use { "LinArcX/telescope-command-palette.nvim" }

	use("nvim-treesitter/nvim-treesitter") -- Treesitter Syntax Highlighting
    use('neovim/nvim-lspconfig')
    use('MunifTanjim/prettier.nvim')
    -- FZF
	use({
		"ibhagwan/fzf-lua",
		-- config = function()
		-- 	require("yq.config.fzf-lua")
		-- end
	})

    -- Terminal
    use({"akinsho/toggleterm.nvim", tag = '*'}) -- toggle terminal
    use({ 'm00qek/baleia.nvim', tag = 'v1.3.0' })

    -- Productivity
	use("vimwiki/vimwiki")
	use("jreybert/vimagit")
    use("tpope/vim-commentary") -- gc comment
	use("folke/which-key.nvim") -- Which Key
	use("nvim-lualine/lualine.nvim") -- A better statusline
    use("prettier/vim-prettier")
    
	
    -- File management --
	use("vifm/vifm.vim")
	use("scrooloose/nerdtree")
	use("tiagofumo/vim-nerdtree-syntax-highlight")
	use("ryanoasis/vim-devicons")

	-- Tim Pope Plugins --
	use("tpope/vim-surround")

	-- Syntax Highlighting and Colors --
	use("kovetskiy/sxhkd-vim")
	use("vim-python/python-syntax")
	use("ap/vim-css-color")
	use("nickeb96/fish.vim")

	-- Junegunn Choi Plugins --
	use("junegunn/goyo.vim")
	use("junegunn/limelight.vim")
	use("junegunn/vim-emoji")

	-- Colorschemes --
	use("RRethy/nvim-base16")
	use("kyazdani42/nvim-palenight.lua")

	-- Other stuff --
	use("frazrepo/vim-rainbow")

	if packer_bootstrap then
		packer.sync()
	end
end)
