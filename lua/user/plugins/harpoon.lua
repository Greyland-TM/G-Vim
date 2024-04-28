return {
  "ThePrimeagen/harpoon",
  lazy = false,
  config = function()
    local mark = require "harpoon.mark"
    local ui = require "harpoon.ui"

    vim.keymap.set("n", "<leader>a", mark.add_file)
    vim.keymap.set("n", "<C-m>", ui.toggle_quick_menu)

    vim.keymap.set("n", "<C-q>", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<C-w>", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<C-e>", function() ui.nav_file(3) end)
    vim.keymap.set("n", "<C-r>", function() ui.nav_file(4) end)

    vim.keymap.set("n", "<C-n>", function() ui.nav_next() end)
    vim.keymap.set("n", "<C-p>", function() ui.nav_prev() end)
  end,
}