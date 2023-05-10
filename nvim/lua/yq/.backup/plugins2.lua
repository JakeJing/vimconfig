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
    use {  'dhruvmanila/browser-bookmarks.nvim',  tag = '*',}
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
	use({
		"nvim-telescope/telescope-media-files.nvim",
		config = function()
			require("telescope").load_extension("media_files")
		end,
	})
	-- use({
	-- 	"nvim-telescope/telescope.nvim",
	-- 	tag = "0.1.0",
	-- 	requires = { { "nvim-lua/plenary.nvim" } },
	-- })
	-- use("nvim-telescope/telescope-file-browser.nvim")

	use("nvim-treesitter/nvim-treesitter") -- Treesitter Syntax Highlighting
    use('kevinhwang91/rnvimr')
    
    -- display or preview pictures in terminal
    use("mattn/libcallex-vim")
    -- use({'edluffy/hologram.nvim', config = function()
    --     require('hologram').setup{
    --         auto_display = true 
    --         -- WIP automatic markdown image display, may be prone to breaking
    --     } 
    -- end})
    use('jose-elias-alvarez/null-ls.nvim')
    -- prettier for lua (both pkgs are needed)
    use('neovim/nvim-lspconfig')
    use('MunifTanjim/prettier.nvim')

    -- FZF
	use({
		"ibhagwan/fzf-lua",
		config = function()
			require("yq.config.fzf-lua")
		end
	})
    -- Terminal
    -- fine cmdline (useful)
    use {
        'VonHeikemen/fine-cmdline.nvim',
        requires = {
        {'MunifTanjim/nui.nvim'}
        }
    }
	use({ "numToStr/FTerm.nvim" })
    use({ 'm00qek/baleia.nvim', tag = 'v1.3.0' })
    use("bytesnake/vim-graphical-preview")
    use({'samodostal/image.nvim',
        config = function()
        require('image').setup {
          render = {
            min_padding = 5,
            show_label = true,
            use_dither = true,
            foreground_color = false,
            background_color = false
          },
          events = {
            update_on_nvim_resize = true,
          },
        }
        end})

    -- Productivity
	use("vimwiki/vimwiki")
	use("jreybert/vimagit")
	use("nvim-orgmode/orgmode")
    use("tpope/vim-commentary") -- gc comment
	use("folke/which-key.nvim") -- Which Key
	use("nvim-lualine/lualine.nvim") -- A better statusline
    -- use('caenrique/buffer-term.nvim') -- removed since tiggleterm is much better
    use({"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup{
            -- on_create = function() require('toggleterm').exec("Vifm $PWD") end, -- run vifm whenever terminal is created
            on_create = function() require('toggleterm').exec("vf") end, -- run vifm whenever terminal is created
            open_mapping = [[<C-s>]], -- you can open and toggle terminal via ctrl+\
            direction = 'float',
            float_opts = {
              width = 115, -- use :echo winwidth('%') to get the window width
              height = 32, -- use :echo winheight('%') to get the window height
              border = "double",
              winblend = 8, -- adjust the transparency
              -- zindex = 4,
            },
            shell = vim.o.shell
        }
        end}) -- toggle terminal
    -- use "b0o/incline.nvim"
    use("prettier/vim-prettier")
    
    -- navigation --
    use({
        'phaazon/hop.nvim',
        branch = 'v2.0',
        config = function()
        require'hop'.setup {}
        end
        })
    use({"ggandor/leap.nvim", 
        require('leap').add_default_mappings()
        })
	
    -- File management --
	use("vifm/vifm.vim")
	use("scrooloose/nerdtree")
	use("tiagofumo/vim-nerdtree-syntax-highlight")
	use("ryanoasis/vim-devicons")

	-- Tim Pope Plugins --
	use("tpope/vim-surround")

	-- Syntax Highlighting and Colors --
	use("PotatoesMaster/i3-vim-syntax")
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
