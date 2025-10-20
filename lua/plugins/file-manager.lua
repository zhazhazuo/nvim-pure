---@type LazySpec
local yazi = {
	"mikavilpas/yazi.nvim",
	version = "*", -- use the latest stable version
	event = "VeryLazy",
	dependencies = {
		{ "nvim-lua/plenary.nvim", lazy = true },
	},
	keys = {
		-- 👇 in this section, choose your own keymappings!
		{
			"<leader>fc",
			mode = { "n", "v" },
			"<cmd>Yazi<cr>",
			desc = "Open yazi at the current file",
		},
		{
			-- Open in the current working directory
			"<leader>fl",
			"<cmd>Yazi cwd<cr>",
			desc = "Open the file manager in nvim's working directory",
		},
		{
			"<c-up>",
			"<cmd>Yazi toggle<cr>",
			desc = "Resume the last yazi session",
		},
	},
	---@type YaziConfig | {}
	opts = {
		-- if you want to open yazi instead of netrw, see below for more info
		open_for_directories = false,
		keymaps = {
			show_help = "<f1>",
		},
	},
	-- 👇 if you use `open_for_directories=true`, this is recommended
	init = function()
		-- mark netrw as loaded so it's not loaded at all.
		--
		-- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
		vim.g.loaded_netrwPlugin = 1
	end,
}

local oil = {
  {
    "stevearc/oil.nvim",
    opts = {
      keymaps = {
        ["<C-s>"] = false,
        ["<C-h>"] = false,
        ["<C-x>"] = { "actions.select", opts = { vertical = true } },
        ["<C-y>"] = { "actions.select", opts = { horizontal = true } },
      },
    },
    event = "VeryLazy",
    cmd = "Oil",
    keys = {
      {
        "<leader>e",
        function()
          require("oil").open()
        end,
        desc = "Open parent directory",
      },
    },
  },
}

return {
	yazi,
	oil,
}
