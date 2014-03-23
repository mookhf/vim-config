" Copyright (C) 2012  Strahinja Val Markovic  <val@markovic.io>
"
" This file is part of ListToggle.
"
" ListToggle is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.
"
" ListToggle is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with ListToggle.  If not, see <http://www.gnu.org/licenses/>.
"
"
" See ':help listtoggle' for more information.

if exists('g:loaded_listtoggle')
  finish
endif
let g:loaded_listtoggle = 1

let g:lt_height = get( g:, 'lt_height', 10 )
let g:lt_location_list_toggle_map =
      \ get( g:, 'lt_location_list_toggle_map', '<leader>l' )
let g:lt_quickfix_list_toggle_map =
      \ get( g:, 'lt_quickfix_list_toggle_map', '<leader>q' )

" If the user has explicitly set some mappings, then we don't use <unique> when
" creating the mappings; the user obviously wants to use them
if g:lt_location_list_toggle_map != '<leader>l' ||
      \ g:lt_quickfix_list_toggle_map != '<leader>q'
  let s:unique = ''
else
  let s:unique = '<unique>'
endif

execute "nnoremap " . s:unique . " <silent> " .
      \ g:lt_location_list_toggle_map . " :LToggle<CR>"
execute "nnoremap " . s:unique . " <silent> " .
      \ g:lt_quickfix_list_toggle_map . " :QToggle<CR>"

command! QToggle call <sid>QListToggle()
command! LToggle call <sid>LListToggle()


function! s:LListToggle()
  if exists("s:quickfix_buffer_number")
    silent! lclose
  else
    execute "silent! lopen " . g:lt_height
  endif
endfunction


function! s:QListToggle()
  if exists("s:quickfix_buffer_number")
    silent! cclose
  else
    execute "silent! botright copen " . g:lt_height
  endif
endfunction


function s:CheckIsQuickfixWindowClosing()
  if exists("s:quickfix_buffer_number") &&
        \ expand("<abuf>") == s:quickfix_buffer_number
    unlet! s:quickfix_buffer_number
  endif
endfunction


function s:GetQuickFixBufferNumber()
  let s:quickfix_buffer_number = bufnr('$')
endfunction


augroup ListToggle
  autocmd BufWinEnter quickfix call s:GetQuickFixBufferNumber()
  autocmd BufWinLeave * call s:CheckIsQuickfixWindowClosing()
augroup END
