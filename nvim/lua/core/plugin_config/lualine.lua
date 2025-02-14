require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'onedark',
        section_separators = {left = '', right = ''},
        component_separators = {left = '', right = ''}
    },
    sections = {
        lualine_a = {
            {
                    'mode',
                    padding = 1,
                    'filename',
                    path = 1,
            },
            {
                    'buffer',
                    symbols = {
                    modified = ' ●',      -- Text to show when the buffer is modified
                    alternate_file = '#', -- Text to show to identify the alternate file
                    directory =  '',     -- Text to show when the buffer is a directory
            },
            },
        },

        lualine_x = {
            {'fileformat',
            symbol = {
                 unix = '', -- e712
                 dos = '',  -- e70f
                 mac = '',
                }
            },
        }    
    },
}
