let g:startify_files_number = 5
let g:startify_change_to_dir = 0
let g:startify_relative_path = 1
let g:startify_use_env = 1
        " Custom startup list, only show MRU from current directory/project
let g:startify_lists = [
\  { 'type': 'dir',       'header': [ 'Files '. getcwd() ] },
\  { 'type': 'sessions',  'header': [ 'Sessions' ]       },
\  { 'type': 'bookmarks', 'header': [ 'Bookmarks' ]      },
\  { 'type': 'commands',  'header': [ 'Commands' ]       },
\ ]
        let g:startify_commands = [
\   { 'up': [ 'Update Plugins', ':PlugUpdate' ] },
\   { 'ug': [ 'Upgrade Plugin Manager', ':PlugUpgrade' ] },
\   { 'in': [ 'Install Plugins', 'PlugInstall' ] },
\   { 'll': [ 'Clean Plugins', 'PlugClean' ] }
\ ]
        let g:startify_bookmarks = [
\ { 'c': '~/.config/nvim/init.vim' },
\ { 'g': '~/.gitconfig' },
\ { 'z': '~/.config/fish/config.fish' }
\ ]

let g:startify_custom_header=[
\ "                                         -`",
\ "                                        .o+`",
\ "                                       `ooo/",
\ "                                      `+oooo:",
\ "                                     `+oooooo:",
\ "                                     -+oooooo+:",
\ "                                   `/:-:++oooo+:",
\ "                                  `/++++/+++++++:",
\ "                                 `/++++++++++++++:",
\ "                                `/+++ooooooooooooo/`",
\ "                               ./ooosssso++osssssso+`",
\ "                              .oossssso-````/ossssss+`",
\ "                             -osssssso.      :ssssssso.",
\ "                            :osssssss/        osssso+++.",
\ "                           /ossssssss/        +ssssooo/-",
\ "                         `/ossssso+/:-        -:/+osssso+-",
\ "                        `+sso+:-`                 `.-/+oso:",
\ "                       `++:.                           `-/+/",
\ "                       .`                                   `"]

