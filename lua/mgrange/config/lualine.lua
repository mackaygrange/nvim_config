require('lualine').setup 
{
    options = 
    {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = 
        {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,  
        refresh = 
        {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = 
    {
        lualine_a = {'mode'},
        lualine_b = 
        {'branch', 'diff', 
        {
            'diagnostics', 
            sources = {'nvim_lsp', 'nvim_diagnostic'}, 
            sections = {'error', 'warn', 'info', 'hint'},
            diagnostics_color = 
            {
                error = 'DiagnosticError',
                warn = 'DiagnosticWarn',
                info = 'DiagnosticInfo',
                hint = 'DiagnosticHing',
            },
            symbols = 
            {
                error = 'E',
                warn = 'W',
                info = 'I',
                hint = 'H',
            },
            colored = true,
            update_in_insert = false,
            always_visible = false,
        },
        },
        lualine_c = {{'filename', path = 0, file_status = true, shorting_target = 40},},
        lualine_x = { {'encoding', fmt = string.upper }, 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = 
    {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {'lazy', 'fugitive', 'fzf', 'mason', 'neo-tree'},
}