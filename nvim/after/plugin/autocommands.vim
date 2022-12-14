autocmd BufWritePre * lua vim.lsp.buf.format()

" Run Prettier in .js and .ts
autocmd BufWritePre *.{js,ts,jsx,tsx} Neoformat

" Manage personal notes
autocmd BufWinEnter,BufEnter,BufNewFile $PATH_TO_NOTES/* :!cd $PATH_TO_NOTES && rm -f *-copy && git pull 
autocmd BufWinEnter,BufEnter,BufNewFile $PATH_TO_NOTES/* :silent !cp % %-copy 
autocmd BufWritePost $PATH_TO_NOTES/* !sh $PATH_TO_NOTE_UTILS/update-notes.sh % && cp % %-copy
autocmd BufWinLeave,BufLeave $PATH_TO_NOTES/* :silent !sh $PATH_TO_NOTE_UTILS/clean-notes.sh % 
 
