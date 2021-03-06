-- https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone)
USER = vim.fn.expand('$USER')

local sumneko_root_path = "/library/lua-language-server"

local sumneko_binary = "/library/lua-language-server/Linux/lua-language-server"


if vim.fn.has("unix") == 1 then
	sumneko_root_path = "/home/" .. USER .. "/library/lua-language-server"
	-- find ur /bin/lua-language-server exec file!!!
	sumneko_binary = "/home/" .. USER .. "/library/lua-language-server/bin/lua-language-server"
end
require 'lspconfig'.sumneko_lua.setup {
	cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" },
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
				-- Setup your lua path
				path = vim.split(package.path, ';')
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { 'vim' }
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = { [vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true }
			}
		}
	}

}
