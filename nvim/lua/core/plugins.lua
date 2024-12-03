local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
    use 'dense-analysis/ale'
    use {
        'luochen1990/rainbow',
        config = function()
            vim.g.rainbow_active = 1
        end
    }
    use 'puremourning/vimspector'
    use 'folke/tokyonight.nvim'
    use 'voldikss/vim-floaterm'
    -- Packer
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use 'nvim-tree/nvim-tree.lua'
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-lualine/lualine.nvim'
    use 'navarasu/onedark.nvim'
    -- use 'nvim-treesitter/nvim-treesitter'
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        require = {{'nvim-lua/plenary.nvim'}}
    }
    use 'jiangmiao/auto-pairs'

    use{
        'numtoStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
   }
   use 'karb94/neoscroll.nvim'
   

     use {'mfussenegger/nvim-dap',
     requires = {
       'williamboman/mason.nvim',
       'jay-babu/mason-nvim-dap.nvim',
     },
     config = function()
       local dap = require("dap")

      require("mason").setup()
      require("mason-nvim-dap").setup({
         ensure_installed = {'cpptools'}
      })

       dap.adapters.cpptools = {
         type = 'executable';
         name = "cpptools",
         command = vim.fn.stdpath('data') .. '/mason/bin/OpenDebugAD7',
         args = {},
         attach = {
           pidProperty = "processId",
           pidSelect = "ask"
         },
       }
        dap.configurations.cpp = {
         {
           name = "Launch",
           type = "cpptools",
           request = "launch",
           program = '${workspaceFolder}/main',
           cwd = '${workspaceFolder}',
           stopOnEntry = true,
           args = {},
           runInTerminal = false,
         },
       }
     end,
    }

  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
