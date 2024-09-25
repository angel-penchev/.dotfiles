-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Bulgarian Phonetic layout
vim.opt.langmap =
  "явертъуиопшщасдфгхйклчзьцжбнмЯВЕРТЪУИОПШЩАСДФГХЙКЛЮЧЗѝЦЖБНМ;qwertyuiop[]asdfghjkl`zxcvbnmQWERTYUIOP{}ASDFGHJKL|~ZXCVBNM"

-- Theme switcher
vim.keymap.set("n", "<leader>th", ":Telescope themes<CR>", { noremap = true, silent = true, desc = "Theme Switcher" })
