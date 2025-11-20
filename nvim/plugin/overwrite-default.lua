return {
	-- 配置 LSP 以默认隐藏诊断信息 (Diagnostics)
	{
		"neovim/nvim-lspconfig",
		opts = {
			diagnostics = {
				underline = false,
				update_in_insert = false,
				virtual_text = false, -- 关闭行尾的错误提示文字
				signs = false, -- 关闭行号旁边的图标
			},
			-- 如果你想完全禁用自动诊断功能（不仅仅是隐藏 UI），
			-- 可以在 on_attach 中使用 vim.diagnostic.enable(false)
			-- 但上面的 UI 隐藏通常是用户想要的 "视觉清静"
		},
	},

	-- Tab确认补全
	{
		"saghen/blink.cmp",
		opts = function(_, opts)
			opts.keymap = {
				preset = "super-tab",
				["<Tab>"] = { "select_and_accept" },
				["<S-Tab>"] = { "select_prev" },
			}
		end,
	},
}
