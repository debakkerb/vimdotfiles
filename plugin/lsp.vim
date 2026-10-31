vim9script

def g:LspAttachedMappings()
	nnoremap <buffer> <silent> gd					<cmd>LspGotoDefinition<CR>
	nnoremap <buffer> <silent> K					<cmd>LspHover<CR>
	nnoremap <buffer> <silent> [d					<cmd>LspDiag prev<CR>
	nnoremap <buffer> <silent> ]d					<cmd>LspDiag next<CR>
	nnoremap <buffer> <silent> <leader>rn <cmd>LspRename<CR>
	nnoremap <buffer> <silent> <leader>ca	<cmd>LspCodeAction<CR>
	nnoremap <buffer> <silent> <leader>lf	<cmd>LspFormat<CR>

	# Enter = Accept highlighted item
	inoremap <buffer>	<expr>	<CR>	pumvisible() && complete_info(['selected']).selected != -1 ? "\<C-y>" : "\<CR>"
enddef

def g:LspDetachedMappings()
	silent! iunmap <S-TAB> 
	silent! nunmap <buffer> gd
	silent! nunmap <buffer> K
	silent! nunmap <buffer> [d
	silent! nunmap <buffer> ]d
	silent! nunmap <buffer> <leader>rn
	silent! nunmap <buffer> <leader>ca
	silent! nunmap <buffer> <leader>lf
enddef

autocmd User LspAttached call g:LspAttachedMappings()
autocmd User LspDetached call g:LspDetachedMappings()
