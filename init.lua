-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

local opt = vim.opt
opt.clipboard = ""
vim.api.nvim_set_keymap(
  "n",
  "<space>f]",
  ":Telescope file_browser<CR>",
  { noremap = true }
)

-- [[ Setting options ]]
-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.encoding = 'utf-8'
vim.opt.spell = true -- Enable spellchecking
vim.opt.wrap = false -- Line wrap
vim.opt.linebreak = true -- Avoid wrapping a line in the middle of a word. 
vim.opt.cursorline = true -- Highlight the text line of the cursor

vim.opt.number = true -- Make line numbers default
vim.opt.numberwidth = 2
vim.opt.relativenumber = true
vim.opt.ruler = true -- Show the line and column number of the cursor position
vim.opt.mouse = 'a' -- Enable mouse mode
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim. Remove this option if you want your OS clipboard to remain independent
vim.opt.breakindent = true -- Enable break indent
vim.opt.undofile = true -- Save undo history
-- [Search]
vim.opt.hlsearch = true -- Set highlight on search 
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.smartcase = true -- Automatically switch search to case-sensitive when search query contains an uppercase letter
-- [END Search]

vim.opt.signcolumn = 'yes' -- Keep signcolumn on by default

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.completeopt = 'menuone,noselect' -- Set completeopt to have a better completion experience

vim.opt.termguicolors = true -- NOTE: You should make sure your terminal supports this

-- [Cursor |]
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

vim.opt.title = true -- When on, the title of the window will be set to the value of 'titlestring' (if it is not empty), or to: filename [+=-] (path) - NVIM
vim.opt.laststatus = 2 -- The value of this option influences when the last window will have a status line:
-- [Indenting]
vim.opt.expandtab = true -- Convert tabs to space
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.shiftround = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
-- [End indenting]
vim.opt.shortmess:append "sI" -- Disable nvim intro
vim.opt.whichwrap:append "<>[]hl" -- Go to previous/next line with h,l,left arrow and right arrow when cursor reaches end/beginning of line

