let g:promptline_theme = 'airline'
let g:airline_theme = 'base16_embers'
let g:airline_powerline_fonts = 1
let g:airline_enable_branch = 1
let g:tmuxline_preset = {
       \'a'    : '#S',
       \'c'    : ['#(whoami)'],
       \'win'  : ['#I', '#W'],
       \'cwin' : ['#I', '#W', '#F'],
       \'y'    : '%T',
       \'z'    : '%a %d %b'}
