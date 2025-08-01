return {
	"CopilotC-Nvim/CopilotChat.nvim",
	dependencies = {
		{ "github/copilot.vim" },
		{ "nvim-lua/plenary.nvim", branch = "master" },
	},
	build = "make tiktoken",
	opts = {
		model = "claude-3.7-sonnet",
		prompts = {
			Rename = {
				prompt = "Please rename the variable correctly in given selection based on context.",
				selection = function(source)
					local select = require("CopilotChat.select")
					return select.visual(source)
				end,
			},
		},
	},
	keys = {
		{ "<leader>ae", ":CopilotChatExplain<CR>", mode = "v", desc = "Explain Code" },
		{ "<leader>ar", ":CopilotChatReview<CR>", mode = "v", desc = "Review Code" },
		{ "<leader>af", ":CopilotChatFix<CR>", mode = "v", desc = "Fix Code Issues" },
		{ "<leader>ad", ":CopilotChatDocs<CR>", mode = "v", desc = "Generate Docs" },
		{ "<leader>ao", ":CopilotChatOptimize<CR>", mode = "v", desc = "Optimize Code" },
		{ "<leader>at", ":CopilotChatTests<CR>", mode = "v", desc = "Generate Tests" },
		{ "<leader>ac", ":CopilotChatCommit<CR>", mode = "v", desc = "Generate Commit Message" },
		{ "<leader>am", ":CopilotChatModels<CR>", mode = "n", desc = "Change Model" },
	},
}
