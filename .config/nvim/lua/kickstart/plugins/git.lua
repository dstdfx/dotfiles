return {
  'tpope/vim-fugitive',
  cmd = { 'Git', 'G' },
  keys = {
    { '<leader>gs', ':Git<CR>', desc = 'Git status (fugitive)' },
    { '<leader>gc', ':Git checkout ', desc = 'Git checkout (fugitive)' },
  },
}
