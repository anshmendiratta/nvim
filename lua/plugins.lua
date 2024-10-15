local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"tpope/vim-fugitive",
	"tpope/vim-rhubarb",
	"tpope/vim-sleuth",
	"folke/zen-mode.nvim",
	{ "sindrets/winshift.nvim", opts = {} },
	{ "nvim-treesitter/nvim-treesitter-context", opts = {} },
	{ "numtostr/comment.nvim", opts = {} },
	{ "simrat39/rust-tools.nvim", opts = {} },
	{ "folke/which-key.nvim", opts = {} },
	{ "nvim-focus/focus.nvim", opts = {} },

	{ "santos-gabriel-dario/darcula-solid.nvim", dependencies = {
		"rktjmp/lush.nvim",
	} },

	{ "notken12/base46-colors" },

	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
	},
	{
		"dgagn/diagflow.nvim",
		opts = {},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
		build = ":TSUpdate",
	},
	{
		"blazkowolf/gruber-darker.nvim",
		-- opts = {
		-- 	italic = {
		-- 		strings = false,
		-- 		comments = false,
		-- 		operators = false,
		-- 		folds = false,
		-- 	},
		-- },
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			{ "j-hui/fidget.nvim", opts = {} },
		},
		config = function()
			require("plugins.lspconfig")
		end,
	},

	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"l3mon4d3/luasnip",
			"saadparwaiz1/cmp_luasnip",
			"lukas-reineke/cmp-under-comparator",
			"hrsh7th/cmp-nvim-lsp",
			"rafamadriz/friendly-snippets",
			"onsails/lspkind.nvim",
		},
		config = function()
			require("plugins.cmp")
		end,
	},

	{
		"stevearc/conform.nvim",
		config = function()
			require("plugins.conform")
		end,
	},

	{
		"gelguy/wilder.nvim",
		config = function()
			require("plugins.wilder")
		end,
	},

	{
		"windwp/nvim-autopairs",
		config = function()
			require("plugins.autopairs")
		end,
	},

	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
		},
		config = function()
			require("plugins.telescope")
		end,
	},
}, {})
