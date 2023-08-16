local status, packer = pcall(require, 'packer')

if (not status) then
	print("Packer not installed")
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
	use 'wbthomason/packer.nvim'

	use({ 'rose-pine/neovim', as = 'rose-pine' })
	vim.cmd('colorscheme rose-pine')

    use 'wakatime/vim-wakatime'

	use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
            pcall(vim.cmd, 'MasonUpdate')
          end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
    }

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use {
	    "Pocco81/auto-save.nvim",
	    config = function()
		    require("auto-save").setup {}
	    end,
    }

    use 'darrikonn/vim-gofmt'
    
    use {'akinsho/git-conflict.nvim', tag = "*", config = function()
        require('git-conflict').setup()
    end}

    use {'prettier/vim-prettier', run = 'yarn install --frozen-lockfile --production'}

    use 'mfussenegger/nvim-dap'

    use { "catppuccin/nvim", as = "catppuccin" }
end)
