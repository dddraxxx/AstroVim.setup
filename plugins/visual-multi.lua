return {
    'mg979/vim-visual-multi',
    keys = {
        {"<leader>-", desc = "VM_leader"},
        {"<C-n>", desc = "Multi select next word on cursor"}, 
    },
    config = function()
        vim.cmd([[
            let g:VM_leader = '<leader>-'
            let g:VM_maps = {}
        ]])
    end,
}
