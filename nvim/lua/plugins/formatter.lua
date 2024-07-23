return {
	"mhartington/formatter.nvim",
	 lazy = false,
	opts = {
		logging = true,
		log_level = vim.log.levels.WARN,
		filetype = {
			lua = function()
				local util = require("formatter.util")
				return {
					exe = "stylua",
					args = {
						"--search-parent-directories",
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--",
						"-",
					},
					stdin = true,
				}
			end,
			cpp = function()
				return {
					exe = "clang-format",
					args = {
						"-assume-filename=",
						vim.api.nvim_buf_get_name(0),
						'-style="{\
                            BasedOnStyle: microsoft,\
                            IndentWidth: 4,\
                            AllowAllParametersOfDeclarationOnNextLine: true,\
                            AllowShortIfStatementsOnASingleLine: WithoutElse,\
                            }"',
					},
					stdin = true,
				}
			end,
			python = function()
				return {
					exe = "autopep8",
					args = { "-" },
					stdin = 1,
				}
			end,
		},
	},
}
