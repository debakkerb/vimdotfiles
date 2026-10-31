vim9script

def g:LspAttachedMappings()
	inoremap <S-TAB> <C-x><C-o>
	
	nnoremap <buffer> <silent> gd					<cmd>LspGotoDefinition<CR>
	nnoremap <buffer> <silent> K					<cmd>LspHover<CR>
	nnoremap <buffer> <silent> [d					<cmd>LspDiag prev<CR>
	nnoremap <buffer> <silent> ]d					<cmd>LspDiag next<CR>
	nnoremap <buffer> <silent> <leader>rn <cmd>LspRename<CR>
	nnoremap <buffer> <silent> <leader>ca	<cmd>LspCodeAction<CR>
enddef

def g:LspDetachedMappings()
	silent! iunmap <S-TAB> 
	silent! nunmap <buffer> gd
	silent! nunmap <buffer> K
	silent! nunmap <buffer> [d
	silent! nunmap <buffer> ]d
	silent! nunmap <buffer> <leader>rn
	silent! nunmap <buffer> <leader>ca
enddef

autocmd User LspAttached call g:LspAttachedMappings()
autocmd User LspDetached call g:LspDetachedMappings()
