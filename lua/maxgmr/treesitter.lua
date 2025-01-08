local configs = require("nvim-treesitter.configs")
configs.setup({
	--[[ ensure_installed = "all", ]]
	ensure_installed = {
		--[[ "asm", ]]
		--[[ "bash", ]]
		--[[ "c", ]]
		--[[ "c_sharp", ]]
		--[[ "cmake", ]]
		"comment",
		--[[ "cpp", ]]
		--[[ "css", ]]
		--[[ "csv", ]]
		--[[ "diff", ]]
		--[[ "dockerfile", ]]
		--[[ "fsh", ]]
		"git_config",
		"git_rebase",
		"gitattributes",
		"gitcommit",
		"gitignore",
		--[[ "html", ]]
		--[[ "java", ]]
		--[[ "javascript", ]]
		--[[ "json", ]]
		--[[ "json5", ]]
		--[[ "jsonc", ]]
		--[[ "latex", ]]
		--[[ "llvm", ]]
		"lua",
		"luadoc",
		--[[ "make", ]]
		--[[ "python", ]]
		--[[ "regex", ]]
		--[[ "rust", ]]
		--[[ "sql", ]]
		--[[ "todotxt", ]]
		--[[ "toml", ]]
		--[[ "typescript", ]]
		"vim",
		"vimdoc",
		--[[ "xml", ]]
		--[[ "yaml", ]]
	},
	sync_install = false,
	ignore_install = { "" }, -- List of parsers to ignore installing
	autopairs = {
		enable = true,
	},
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = false,
	},
	indent = { enable = false },
})

--[[ -- Create .mfs16 filetype ]]
--[[ vim.filetype.add({ ]]
--[[ 	extension = { ]]
--[[ 		mfs16 = "mfs16", ]]
--[[ 	}, ]]
--[[ }) ]]
--[[]]
--[[ -- Add .mfs16 ASM extension ]]
--[[ vim.treesitter.language.register("asm", "mfs16") ]]
