return {
	'windwp/nvim-autopairs',
	event = "InsertEnter",
    config = function ()
        local npairs = require('nvim-autopairs')
        npairs.setup { map_cr = true }
    end
}
