-- VS Code style keymaps for Neovim
-- Add this to your lua/config/keymaps.lua file or create a new file

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- ====================
-- VS CODE STYLE KEYMAPS
-- ====================

-- File Operations
keymap("n", "<C-s>", ":w<CR>", opts)                    -- Save file
keymap("i", "<C-s>", "<ESC>:w<CR>", opts)               -- Save file (insert mode)
keymap("n", "<C-n>", ":enew<CR>", opts)                 -- New file
keymap("n", "<C-o>", ":Telescope find_files<CR>", opts) -- Open file
keymap("n", "<C-w>", ":bd<CR>", opts)                   -- Close file
keymap("n", "<C-S-w>", ":bd!<CR>", opts)                -- Force close file
keymap("n", "<C-q>", ":q<CR>", opts)                    -- Quit
keymap("n", "<C-S-q>", ":q!<CR>", opts)                 -- Force quit

-- Edit Operations
keymap("n", "<C-z>", ":undo<CR>", opts)       -- Undo
keymap("i", "<C-z>", "<ESC>:undo<CR>i", opts) -- Undo (insert mode)
keymap("n", "<C-y>", ":redo<CR>", opts)       -- Redo
keymap("i", "<C-y>", "<ESC>:redo<CR>i", opts) -- Redo (insert mode)
keymap("n", "<C-a>", "ggVG", opts)            -- Select all
keymap("i", "<C-a>", "<ESC>ggVG", opts)       -- Select all (insert mode)
keymap("n", "<C-c>", '"+y', opts)             -- Copy
keymap("v", "<C-c>", '"+y', opts)             -- Copy (visual mode)
keymap("n", "<C-x>", '"+x', opts)             -- Cut
keymap("v", "<C-x>", '"+x', opts)             -- Cut (visual mode)
keymap("n", "<C-v>", '"+p', opts)             -- Paste
keymap("i", "<C-v>", '<ESC>"+pa', opts)       -- Paste (insert mode)
keymap("v", "<C-v>", '"+p', opts)             -- Paste (visual mode)

-- Find and Replace
keymap("n", "<C-f>", ":Telescope live_grep<CR>", opts)     -- Find in files
keymap("n", "<C-h>", ":%s/", { noremap = true })           -- Find and replace
keymap("n", "<C-S-f>", ":Telescope grep_string<CR>", opts) -- Find current word
keymap("n", "<F3>", "n", opts)                             -- Find next
keymap("n", "<S-F3>", "N", opts)                           -- Find previous

-- Navigation
keymap("n", "<C-p>", ":Telescope find_files<CR>", opts)  -- Quick open
keymap("n", "<C-S-p>", ":Telescope commands<CR>", opts)  -- Command palette
keymap("n", "<C-S-e>", ":NvimTreeToggle<CR>", opts)      -- Toggle file explorer
keymap("n", "<C-S-f>", ":Telescope live_grep<CR>", opts) -- Search in files
keymap("n", "<C-S-g>", ":Telescope git_files<CR>", opts) -- Git files
keymap("n", "<C-S-h>", ":Telescope help_tags<CR>", opts) -- Help
keymap("n", "<C-S-o>", ":Telescope symbols<CR>", opts)   -- Go to symbol
keymap("n", "<C-t>", ":Telescope buffers<CR>", opts)     -- Switch tabs/buffers
keymap("n", "<C-S-t>", ":tabnew<CR>", opts)              -- New tab
keymap("n", "<C-S-w>", ":tabclose<CR>", opts)            -- Close tab

-- Tab Navigation
keymap("n", "<C-Tab>", ":bnext<CR>", opts)                -- Next tab
keymap("n", "<C-S-Tab>", ":bprevious<CR>", opts)          -- Previous tab
keymap("n", "<C-1>", ":BufferLineGoToBuffer 1<CR>", opts) -- Go to tab 1
keymap("n", "<C-2>", ":BufferLineGoToBuffer 2<CR>", opts) -- Go to tab 2
keymap("n", "<C-3>", ":BufferLineGoToBuffer 3<CR>", opts) -- Go to tab 3
keymap("n", "<C-4>", ":BufferLineGoToBuffer 4<CR>", opts) -- Go to tab 4
keymap("n", "<C-5>", ":BufferLineGoToBuffer 5<CR>", opts) -- Go to tab 5

-- Code Navigation
keymap("n", "<F12>", ":lua vim.lsp.buf.definition()<CR>", opts)          -- Go to definition
keymap("n", "<C-F12>", ":lua vim.lsp.buf.implementation()<CR>", opts)    -- Go to implementation
keymap("n", "<S-F12>", ":lua vim.lsp.buf.references()<CR>", opts)        -- Find references
keymap("n", "<C-S-F12>", ":lua vim.lsp.buf.type_definition()<CR>", opts) -- Go to type definition
keymap("n", "<C-k><C-i>", ":lua vim.lsp.buf.hover()<CR>", opts)          -- Show hover info
keymap("n", "<C-S-i>", ":lua vim.lsp.buf.signature_help()<CR>", opts)    -- Parameter hints

-- Code Actions
keymap("n", "<C-.>", ":lua vim.lsp.buf.code_action()<CR>", opts) -- Quick fix
keymap("n", "<F2>", ":lua vim.lsp.buf.rename()<CR>", opts)       -- Rename symbol
keymap("n", "<C-S-l>", ":lua vim.lsp.buf.format()<CR>", opts)    -- Format document
keymap("v", "<C-S-l>", ":lua vim.lsp.buf.format()<CR>", opts)    -- Format selection

-- Folding
keymap("n", "<C-S-[>", "zc", opts)    -- Fold
keymap("n", "<C-S-]>", "zo", opts)    -- Unfold
keymap("n", "<C-k><C-[>", "zM", opts) -- Fold all
keymap("n", "<C-k><C-]>", "zR", opts) -- Unfold all

-- Line Operations
keymap("n", "<C-S-k>", ":m .-2<CR>==", opts)        -- Move line up
keymap("n", "<C-S-j>", ":m .+1<CR>==", opts)        -- Move line down
keymap("i", "<C-S-k>", "<ESC>:m .-2<CR>==gi", opts) -- Move line up (insert)
keymap("i", "<C-S-j>", "<ESC>:m .+1<CR>==gi", opts) -- Move line down (insert)
keymap("v", "<C-S-k>", ":m '<-2<CR>gv=gv", opts)    -- Move selection up
keymap("v", "<C-S-j>", ":m '>+1<CR>gv=gv", opts)    -- Move selection down
keymap("n", "<C-S-d>", ":t.<CR>", opts)             -- Duplicate line
keymap("v", "<C-S-d>", ":t'><CR>", opts)            -- Duplicate selection
keymap("n", "<C-S-Enter>", "o<ESC>", opts)          -- Insert line below
keymap("n", "<C-Enter>", "O<ESC>", opts)            -- Insert line above
keymap("n", "<C-S-x>", "dd", opts)                  -- Delete line
keymap("i", "<C-S-x>", "<ESC>dd", opts)             -- Delete line (insert)

-- Multi-cursor (if you have vim-multiple-cursors plugin)
keymap("n", "<C-d>", "<C-n>", opts)   -- Add cursor to next match
keymap("n", "<C-S-d>", "<C-p>", opts) -- Add cursor to previous match
keymap("n", "<C-S-l>", "<C-x>", opts) -- Skip current match

-- Comments (if you have Comment.nvim or similar)
keymap("n", "<C-/>", ":lua require('Comment.api').toggle.linewise.current()<CR>", opts)            -- Toggle line comment
keymap("v", "<C-/>", ":lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts) -- Toggle block comment

-- Terminal
keymap("n", "<C-`>", ":ToggleTerm<CR>", opts)            -- Toggle terminal
keymap("t", "<C-`>", "<C-\\><C-n>:ToggleTerm<CR>", opts) -- Toggle terminal (terminal mode)

-- Debugging (if you have nvim-dap)
keymap("n", "<F5>", ":lua require('dap').continue()<CR>", opts)          -- Start/Continue debugging
keymap("n", "<F9>", ":lua require('dap').toggle_breakpoint()<CR>", opts) -- Toggle breakpoint
keymap("n", "<F10>", ":lua require('dap').step_over()<CR>", opts)        -- Step over
keymap("n", "<F11>", ":lua require('dap').step_into()<CR>", opts)        -- Step into
keymap("n", "<S-F11>", ":lua require('dap').step_out()<CR>", opts)       -- Step out
keymap("n", "<C-F5>", ":lua require('dap').restart()<CR>", opts)         -- Restart debugging
keymap("n", "<S-F5>", ":lua require('dap').terminate()<CR>", opts)       -- Stop debugging

-- Problems/Diagnostics
keymap("n", "<C-S-m>", ":lua vim.diagnostic.open_float()<CR>", opts) -- Show diagnostics
keymap("n", "<F8>", ":lua vim.diagnostic.goto_next()<CR>", opts)     -- Next problem
keymap("n", "<S-F8>", ":lua vim.diagnostic.goto_prev()<CR>", opts)   -- Previous problem
keymap("n", "<C-S-p>", ":Telescope diagnostics<CR>", opts)           -- Problems panel

-- Git (if you have gitsigns or fugitive)
keymap("n", "<C-S-g>", ":Git<CR>", opts)                 -- Git status
keymap("n", "<C-k><C-g>", ":Git blame<CR>", opts)        -- Git blame
keymap("n", "<C-S-u>", ":Gitsigns reset_hunk<CR>", opts) -- Undo changes

-- Zen mode / Focus
keymap("n", "<C-k>z", ":ZenMode<CR>", opts) -- Toggle zen mode (if you have zen-mode)

-- Panel toggles
keymap("n", "<C-j>", ":lua vim.diagnostic.open_float()<CR>", opts) -- Toggle problems panel
keymap("n", "<C-S-y>", ":Telescope command_history<CR>", opts)     -- Command history
keymap("n", "<C-S-r>", ":Telescope registers<CR>", opts)           -- Show registers

-- Workspace
keymap("n", "<C-k><C-o>", ":lua vim.lsp.buf.workspace_symbol()<CR>", opts) -- Workspace symbols
keymap("n", "<C-k><C-f>", ":Telescope live_grep<CR>", opts)                -- Find in workspace

-- ====================
-- ADDITIONAL UTILITIES
-- ====================

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts) -- Move to left window
keymap("n", "<C-j>", "<C-w>j", opts) -- Move to lower window
keymap("n", "<C-k>", "<C-w>k", opts) -- Move to upper window
keymap("n", "<C-l>", "<C-w>l", opts) -- Move to right window

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)             -- Decrease window height
keymap("n", "<C-Down>", ":resize +2<CR>", opts)           -- Increase window height
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)  -- Decrease window width
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts) -- Increase window width

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)     -- Next buffer
keymap("n", "<S-h>", ":bprevious<CR>", opts) -- Previous buffer

-- Clear highlights
keymap("n", "<leader><CR>", ":noh<CR>", opts) -- Clear search highlights

-- Better paste
keymap("v", "p", '"_dP', opts) -- Paste without losing clipboard

-- Stay in indent mode
keymap("v", "<", "<gv", opts) -- Decrease indent
keymap("v", ">", ">gv", opts) -- Increase indent

-- ====================
-- PLUGIN SPECIFIC KEYMAPS
-- ====================

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)

-- Git
keymap("n", "<leader>gg", ":lua _LAZYGIT_TOGGLE()<CR>", opts)
keymap("n", "<leader>gh", ":Telescope git_commits<CR>", opts)
keymap("n", "<leader>gb", ":Telescope git_branches<CR>", opts)

-- LSP
keymap("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", opts)
keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "K", ":lua vim.lsp.buf.hover()<CR>", opts)
keymap("n", "gI", ":lua vim.lsp.buf.implementation()<CR>", opts)
keymap("n", "gr", ":lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "gl", ":lua vim.diagnostic.open_float()<CR>", opts)
keymap("n", "<leader>lf", ":lua vim.lsp.buf.format{ async = true }<CR>", opts)
keymap("n", "<leader>li", ":LspInfo<CR>", opts)
keymap("n", "<leader>lI", ":LspInstallInfo<CR>", opts)
keymap("n", "<leader>la", ":lua vim.lsp.buf.code_action()<CR>", opts)
keymap("n", "<leader>lj", ":lua vim.diagnostic.goto_next({buffer=0})<CR>", opts)
keymap("n", "<leader>lk", ":lua vim.diagnostic.goto_prev({buffer=0})<CR>", opts)
keymap("n", "<leader>lr", ":lua vim.lsp.buf.rename()<CR>", opts)
keymap("n", "<leader>ls", ":lua vim.lsp.buf.signature_help()<CR>", opts)
keymap("n", "<leader>lq", ":lua vim.diagnostic.setloclist()<CR>", opts)
