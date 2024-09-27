return {
	"shellpad/shellpad.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	config = function(opts)
		require("shellpad").setup(opts)

		-- search :Shell commands using the following function and mapping:
		vim.keymap.set(
			"n",
			"<leader>sc",
			require("shellpad").telescope_history_search(),
			{ desc = "shellpad: [S]earch [C]ommands" }
		)

		-- Shortcut for :Shell is ";s"
		vim.keymap.set("n", ";s", function()
			vim.api.nvim_feedkeys(":Shell ", "n", false)
		end, { noremap = true, desc = "shellpad: prepare shell command" })
	end,
}
