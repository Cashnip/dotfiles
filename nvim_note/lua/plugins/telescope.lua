return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' },
      keys = {
        {"<leader>pf", "<cmd>Telescope find_files<cr>", desc= "Find files"},
        {"<leader>pp", "<cmd>Telescope live_grep<cr>", desc= "Live grep"},
        {"<leader>ph", "<cmd>Telescope help_tags<cr>", desc= "Find help"},
      }
}
