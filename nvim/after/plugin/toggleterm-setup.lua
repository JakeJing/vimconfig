require("toggleterm").setup{
    -- on_create = function() require('toggleterm').exec("Vifm $PWD") end, -- run vifm whenever terminal is created
    on_create = function() require('toggleterm').exec("vf") end, -- run vifm whenever terminal is created
    open_mapping = [[<C-s>]], -- you can open and toggle terminal via ctrl+\
    direction = 'float',
    float_opts = {
      width = 115, -- use :echo winwidth('%') to get the window width
      height = 32, -- use :echo winheight('%') to get the window height
      border = "double",
      winblend = 1, -- adjust the transparency
      -- zindex = 4,
    },
    shell = vim.o.shell
}
