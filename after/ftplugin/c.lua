vim.o.makeprg = "gcc % -o main && ./main"
vim.keymap.set("n", "<leader>r", ":update<CR>:make<CR>", { desc = "[N] Run `gcc <file>`" })

vim.keymap.set("ia", "stdio", "#include <stdio.h><CR><CR>int main() {<CR>return 0;<CR>}<ESC>2kA",
               { desc = "[A] Initial C file" })

vim.keymap.set("ia", "include", "#include <><Left>",
               { desc = "[A] Snippet `includes`" })
