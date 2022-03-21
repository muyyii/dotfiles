-- TODO: investigar esto
local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

vim.gmapleader = ' '

-- Ejemplo
-- mapper("n", "w", ":w<CR>") -- params: modo, key, action
