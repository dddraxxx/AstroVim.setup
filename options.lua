vim.cmd[[set relativenumber!]]
vim.cmd[[set noswapfile]]

vim.cmd([[
    augroup SyncVimrc
      autocmd!
      autocmd BufWritePost ~/.vimrc execute ':silent !cp % /mnt/c/Users/airja/.vimrc'
    augroup END
]])
-- To make every copy/paste from vim to windows clipboard work
-- vim.cmd[[
--   let g:clipboard = {
--   \   'name': 'WslClipboard',
--   \   'copy': {
--   \      '+': 'clip.exe',
--   \      '*': 'clip.exe',
--   \    },
--   \   'paste': {
--   \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--   \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--   \   },
--   \   'cache_enabled': 0,
--   \ }  
-- ]]

return {
    opt = {
        cursorcolumn = true,
        tabstop = 4,
        shiftwidth = 4,
    }
}
