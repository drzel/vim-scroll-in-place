scriptencoding utf-8

" vim-scroll-in-place
" Forked from Andrew Pimlott's https://vim.fandom.com/wiki/Combining_move_and_scroll

if exists('g:loaded_scroll_in_place') || &compatible
  finish
endif

" <C-j> and <C-k> to scroll page without cursor
function! s:Saving_scroll(cmd)
  let l:save_scroll = &scroll
  execute 'normal! ' . a:cmd
  let &scroll = l:save_scroll
endfunction

nnoremap <silent> <C-j> :call <SID>Saving_scroll("1<C-v><C-d>")<CR>
vnoremap <silent> <C-j> <Esc>:call <SID>Saving_scroll("gv1<C-v><C-d>")<CR>
nnoremap <silent> <C-k> :call <SID>Saving_scroll("1<C-v><C-u>")<CR>
vnoremap <silent> <C-k> <Esc>:call <SID>Saving_scroll("gv1<C-v><C-U>")<CR>
