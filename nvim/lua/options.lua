local opt = vim.opt
local wo = vim.wo
local o = vim.o
local g = vim.g

-- Enable Treesitter/LSP For Hyprlang 
vim.filetype.add({ pattern = { [".*/hypr/.*%.conf"] = "hyprlang" } })

opt.tabstop = 4                 -- Default Tabstop
-- setting block cursor for all mode
opt.guicursor = "n-v-c-i:block,i:block-blinkwait175-blinkoff150-blinkon175"
opt.conceallevel = 1

wo.relativenumber = true        -- Enable Relative Line Numbers 
wo.cursorline = true            -- Highlight current line
wo.number = true                -- Make line numbers default
wo.signcolumn = 'yes'           -- Keep signcolumn on by default

o.hlsearch = false              -- Set highlight on search
o.mouse = 'a'                   -- Enable mouse mode
o.clipboard = 'unnamedplus'     -- Sync clipboard between OS and Neovim.
o.breakindent = true            -- Enable break indent
o.undofile = true               -- Save undo history

-- Case-insensitive searching UNLESS \C or capital in search
o.ignorecase = true
o.smartcase = true

-- Decrease update time
o.updatetime = 250
o.timeoutlen = 300

-- Set completeopt to have a better completion experience
o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
o.termguicolors = true

-- Disable Netrw in favor of nvimTree
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
