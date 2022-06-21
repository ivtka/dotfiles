local options = {

  -- General
  mouse = 'a', -- enable mouse support
  clipboard = 'unnamedplus', -- allows neovim to access the system clipboard
  swapfile = false, -- creates a swapfile
  backup = false, -- creates a backup file
  completeopt = { 'menuone', 'noselect', 'noinsert' }, -- autocomplete option
  fileencoding = "utf-8", -- the encoding written to a file

  -- Neovim UI
  pumheight = 10, -- pop up menu height
  number = true, -- set numbered lines
  relativenumber = false, -- set relative numbered lines
  showmatch = true, -- highlight matching parenthesis
  foldmethod = 'marker', -- enable folding (default 'foldmarker')
  colorcolumn = '80', -- line length marker at 80 columns
  cursorline = true, -- highlight the current line
  wrap = true, -- displays lines as one long line
  splitright = true, -- vertical split to the right
  hlsearch = true, -- highlight all matches on previous search pattern
  splitbelow = true, -- horizontal split to the bottom
  ignorecase = true, -- ignore case letters when search
  smartcase = true, -- ignore lowercase for the whole pattern
  linebreak = true, -- wrap on word boundary
  termguicolors = true, -- enable 24-bit RGB colors
  laststatus = 3, -- set global statusline
  cmdheight = 2, -- more space in the neovim command line for displaying messages

  -- Tabs, Indent
  expandtab = true, -- use spaces instead of tabs
  numberwidth = 4, -- set number column width to 2 {default 4}
  shiftwidth = 2, -- shift 4 spaces when tab
  tabstop = 2, -- 1 tab == 4 spaces
  smartindent = true, -- autoindent new lines

  -- Memory, CPU
  hidden = true, -- enable background buffers
  history = 100, -- remember N lines in history
  lazyredraw = true, -- faster scrolling
  synmaxcol = 240, -- max column for syntax highlight
  updatetime = 700, -- ms to wait for trigger an event

}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.shortmess:append "c"

local disabled_builtins = {
  "netrw",
  "netrwPlugin",
}

for _, plugin in pairs(disabled_builtins) do
  vim.g["loaded_" .. plugin] = 1
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
