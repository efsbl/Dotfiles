return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			{
				"rcarriga/nvim-dap-ui",
				dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
			},
			"theHamsta/nvim-dap-virtual-text",
			"leoluz/nvim-dap-go",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			local dapgo = require("dap-go")

			require("nvim-dap-virtual-text").setup()
			require("dapui").setup({})
			require("dap-go").setup({})

			vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, { desc = "[D]ebug add [B]reakpoint" })
			vim.keymap.set("n", "<Leader>dgb", dap.run_to_cursor, { desc = "[D]ebug [G]o to [B]reakpoint" })

			vim.keymap.set("n", "<F5>", dap.continue, { desc = "Debug Continue" })
			vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Debug Step Over" })
			vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Debug Step Into" })
			vim.keymap.set("n", "<F12>", dap.step_out, { desc = "Debug Step Out" })

			vim.keymap.set("n", "<Leader>du", dapui.toggle, { desc = "[D]ebug Toggle [U]I" })
			vim.keymap.set("n", "<Leader>?", function()
				dapui.eval(nil, { enter = true })
			end, { desc = "Debug eval under cursor" })

			vim.keymap.set("n", "<Leader>dt", dapgo.debug_test, { desc = "[D]ebug [T]est" })
			vim.keymap.set("n", "<Leader>dtl", dapgo.debug_last_test, { desc = "[D]ebug [T]est [L]ast" })

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminate.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end
		end,
	},
}

-- vim: ts=2 sts=2 sw=2 et
