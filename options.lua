vim.cmd[[set relativenumber]]

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
