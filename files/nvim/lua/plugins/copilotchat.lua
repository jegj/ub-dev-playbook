local prompts = {
	-- Code related prompts
	BetterNamings = "Please provide better names for the following variables and functions.",
	SwaggerApiDocs = "Please provide documentation for the following API using Swagger.",
	SwaggerJsDocs = "Please write JSDoc for the following API using Swagger.",
	-- Text related prompts
	Summarize = "Please summarize the following text.",
	Spelling = "Please correct any grammar and spelling errors in the following text.",
	Wording = "Please improve the grammar and wording of the following text.",
	Concise = "Please rewrite the following text to make it more concise.",
}

return {
	"CopilotC-Nvim/CopilotChat.nvim",
	dependencies = {
		{ "github/copilot.vim" },
		{ "nvim-lua/plenary.nvim", branch = "master" },
	},
	build = "make tiktoken",
	opts = {
		model = "claude-sonnet-4.5",
		prompts = vim.tbl_extend("force", prompts, {
			Rename = {
				prompt = "Please rename the variable correctly in given selection based on context.",
				selection = function(source)
					local select = require("CopilotChat.select")
					return select.visual(source)
				end,
			},
		}),
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
		{ "<leader>ap", ":CopilotChatPrompts<CR>", mode = "v", desc = "Change Prompt" },
	},
}
