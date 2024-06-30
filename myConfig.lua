-- myConfig

vim.o.mouse = ""
vim.wo.scrolloff = 7

vim.keymap.set({ "n", "v", "i" }, "<C-q>", "<Esc>:q!<CR>")

-- 取消s的功能
-- 设置分屏快捷方式
vim.keymap.set("n", "s", "<nop>")
vim.keymap.set("n", "sh", ":set nosplitright<CR>:vsplit<CR>")
vim.keymap.set("n", "sl", ":set splitright<CR>:vsplit<CR>")
vim.keymap.set("n", "sj", ":set splitbelow<CR>:split<CR>")
vim.keymap.set("n", "sk", ":set nosplitbelow<CR>:split<CR>")

-- 快捷控制分屏大小
vim.keymap.set({ "n", "v", "i" }, "<C><left>", ":vertical resize-5<CR>")
vim.keymap.set({ "n", "v", "i" }, "<C><right>", ":vertical resize+5<CR>")
vim.keymap.set({ "n", "v", "i" }, "<up>", ":resize-5<CR>")
vim.keymap.set({ "n", "v", "i" }, "<down>", ":resize+5<CR>")

-- 取消t的功能
vim.keymap.set("n", "t", "<nop>")
--nmap tt :tabe<CR>:+tabnext<CR>  设置快捷标签页
vim.keymap.set("n", "tt", ":tabe<CR>:+tabnext<CR>")
vim.keymap.set("n", "th", ":-tabnext<CR> ")
vim.keymap.set("n", "tl", ":+tabnext<CR> ")
vim.keymap.set("n", "t1", ":tabnext 1<CR>")
vim.keymap.set("n", "t2", ":tabnext 2<CR>")
vim.keymap.set("n", "t3", ":tabnext 3<CR>")
vim.keymap.set("n", "t4", ":tabnext 4<CR>")
vim.keymap.set("n", "t5", ":tabnext 5<CR>")
vim.keymap.set("n", "t6", ":tabnext 6<CR>")
vim.keymap.set("n", "t7", ":tabnext 7<CR>")
vim.keymap.set("n", "t8", ":tabnext 8<CR>")
vim.keymap.set("n", "t9", ":tabnext 9<CR>")

-- 切换buffer
vim.keymap.set("n", "<C-n>", ":bnext<CR>")
vim.keymap.set("n", "<C-p>", ":bprevious<CR>")

-- rename
function RenameCurrentFile(new_name)
  local current_file = vim.fn.expand("%")
  local target_file = vim.fn.expand("%:h") .. "/" .. new_name

  vim.api.nvim_command("silent! write")
  vim.api.nvim_command("silent! !mv " .. vim.fn.shellescape(current_file) .. " " .. vim.fn.shellescape(target_file))
  vim.api.nvim_command("edit " .. vim.fn.fnameescape(target_file))
end

vim.cmd("command! -nargs=1 Rename lua RenameCurrentFile(<f-args>)")

-- clangd
-- require('lspconfig').clangd.setup {
--    cmd = {'clangd', '--background-index', '--clang-tidy', '--header-insertion=never', '--compile-commands-dir=<your-compile-commands-directory>'},
-- }
