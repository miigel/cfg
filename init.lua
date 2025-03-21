-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
    spec = {
        'lewis6991/gitsigns.nvim',
        opts = {
            current_line_blame = true,
        },
    },
        install = { colorscheme = { "habamax" } },
        checker = { enabled = true },
})

if vim.g.neovide then
    --vim.g.neovide_scale_factor = 0.65
    vim.g.neovide_scroll_animation_length = 0
    vim.g.neovide_cursor_animation_length = 0
    vim.g.neovide_remember_window_size = true
    vim.o.guifont = "DejaVu Sans Mono:h9"
end

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 8

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.wrap = false

vim.opt.list = true
vim.opt.lcs = "trail:~,tab:-->,extends:$,precedes:$"

vim.opt.scrolloff = 5

vim.opt.cursorline = true

vim.api.nvim_set_hl(0, "Whitespace", {fg="Blue"})
vim.api.nvim_set_hl(0, "NonText", {fg="Cyan"})

vim.keymap.set('i', 'jj', '<Esc>', {noremap = true})
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
