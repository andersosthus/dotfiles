require'nvim-treesitter.configs'.setup {
	ensure_installed = { "javascript", "typescript", "lua", "rust", "c_sharp", "dockerfile", "fish", "git_config", "git_rebase", "gitcommit", "gitignore", "go", "gomod", "hcl", "html", "json", "markdown_inline", "proto", "regex", "sql", "ssh_config"},

	sync_install = false,

	auto_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}
