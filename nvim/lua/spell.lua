-- Spell config

-- Modo de uso
-- zg agrega palabras nuevas al diccionario
-- ]s siguiente palabra con faltas
-- [s anterior palabra con faltas
-- zw marca malas palabras
-- z= muestra listado de palabras recomendadas

vim.cmd[[ autocmd FileType markdown,tex set spell! ]]
--vim.cmd[[ syntax on ]]
vim.o.spelllang = 'en,es'
vim.o.spellfile = "~/.config/nvim/spell/diccionario.utf-8.add"

