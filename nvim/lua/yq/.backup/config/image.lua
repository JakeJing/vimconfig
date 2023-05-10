local source = '~/.config/nvim/lua/yq/.backup/pics/flower.png'
local buf = vim.api.nvim_get_current_buf()
local image = require('hologram.image'):new(source, {
    format = 100, -- format in which image data is sent
    transmission_type = 'f', -- transmission medium used
    data_width = nil, -- px. width of image
    data_height = nil, -- px. height of image
    data_size = nil, -- size of data to read from file
    data_offset = nil, -- offset from which to read file data
    image_number = nil, -- image number
    compressed = nil, -- whether data is compressed or not
    image_id = nil, -- image id
    placement_id = 1, -- placement id
})


-- Image should appear below this line, then disappear after 5 seconds

image:display(5, 0, buf, {})

vim.defer_fn(function()
    image:delete(0, {free = true})
end, 5000)
