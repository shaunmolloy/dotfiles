local map = vim.api.nvim_set_keymap

-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

map('n', '<C-b>', '<Cmd>Neotree toggle<CR>', { desc = '[C-b] Toggle Neotree' })
map('n', '<S-b>', '<Cmd>Neotree reveal_force_cwd<CR>', { desc = '[S-b] Focus Neotree' })

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('neo-tree').setup {}
  end,
}
