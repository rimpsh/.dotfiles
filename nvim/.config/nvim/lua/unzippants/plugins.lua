require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- colorscheme
    use 'folke/tokyonight.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = false }
    }

    -- editorconfig
    use 'gpanders/editorconfig.nvim'

    -- undotree
    use 'mbbill/undotree'

	-- git plugins
	use 'tpope/vim-fugitive' -- this will be removed soon
    use 'junegunn/gv.vim'
    use {
        'TimUntersberger/neogit',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {'sindrets/diffview.nvim'}
        }
    }

	-- lsp
	use 'neovim/nvim-lspconfig'

	-- telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/popup.nvim'},
            {'nvim-lua/plenary.nvim'},
            {'nvim-telescope/telescope-fzy-native.nvim'}
        }
    }

    -- nvim-cmp
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-vsnip',
            'hrsh7th/vim-vsnip',
            'hrsh7th/cmp-cmdline',
            'onsails/lspkind-nvim'
        }
    }

	-- diagnostic
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons"
	}

	-- Treesitter
	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        requires = {
            {'nvim-treesitter/nvim-treesitter-textobjects'},
            {'nvim-treesitter/playground'},
            {'nvim-treesitter/nvim-treesitter-context'}
        },
	}

    -- refactoring
    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            {"nvim-lua/plenary.nvim"},
            {"nvim-treesitter/nvim-treesitter"}
        }
    }

    -- nvim tree file explorer
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            "s1n7ax/nvim-window-picker",
        }
    }

    use {
        "s1n7ax/nvim-window-picker",
        tag = "v1.*",
    }

    -- todo comments
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
    }
end)
