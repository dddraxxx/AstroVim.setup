return {
    {
        'phaazon/hop.nvim',
        branch='v2',
        config = function()
            require('hop').setup({
                jump_on_sole_occurrence = true,
            })
        end,
        keys = {
            {'gw', '<cmd>HopWord<cr>', desc='hop word'},
            {'gs', '<cmd>HopChar1<cr>', desc='hop char'},
            {'gl', '<cmd>HopVertical<cr>', desc='hop line'},
        }
    }
}
