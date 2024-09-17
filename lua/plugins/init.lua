return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require "configs.null-ls"
    end,
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function (_, opts)
      require("dap-go").setup(opts);
    end
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio"
    },
    config = function ()
      require("dapui").setup()
    end
  --  config = function ()
  --    local dap = require("dap")
  --    local dapui = require("dapui")
  --    dap.listeners.before.attach.dapui_config = function()
  --      dapui.open()
  --    end
  --    dap.listeners.before.launch.dapui_config = function()
  --      dapui.open()
  --    end
  --    dap.listeners.before.event_terminated.dapui_config = function()
  --      dapui.close()
  --   end
  --   dap.listeners.before.event_exited.dapui_config = function()
  --      dapui.close()
  --    end
      -- dap ui customize
  --    dapui.setup({
  --      elements = {
  --        {id = "scopes", size = 0.25},
  --        {id = "breakpoints", size = 0.25},
  --        {id = "stacks", size = 0.25},
  --        {id = "watches", size = 0.25}
  --      }
  --    }) 
  --  end
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    config = function ()
      require("nvim-dap-virtual-text").setup()
    end
  },
  --{
  --  "ravenxrz/DAPInstall.nvim",
  --  config = function (_, _)
  --    require("dap-install").setup({
  --      installation_path = vim.fn.stdpath("data").."/dapinstall",
  --   })
  -- end
  --},
  {
    "arp242/gopher.vim",
    ft = "go",
    config = function (_, opts)
      --require("gopher").setup(opts)
    end,
    build = function ()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
