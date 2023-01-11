local Remap = require("fich.keymap")
local nnoremap = Remap.nnoremap

nnoremap("Db", ":call vimspector#ToggleBreakpoint()<cr>")
nnoremap("Dw", ":call vimspector#AddWatch()<cr>")
nnoremap("De", ":call vimspector#Evaluate()<cr>")
