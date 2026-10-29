autocmd User LspAttached {
	inoremap <S-TAB> <C-x><C-o>
	
	nnoremap <buffer> <silent> gd					<cmd>LspGotoDefinition<CR>
	nnoremap <buffer> <silent> K					<cmd>LspHover<CR>
	nnoremap <buffer> <silent> [d					<cmd>LspDiag prev<CR>
	nnoremap <buffer> <silent> ]d					<cmd>LspDiag next<CR>
	nnoremap <buffer> <silent> <leader>rn <cmd>LspRename<CR>
	nnoremap <buffer> <silent> <leader>ca	<cmd>LspCodeAction<CR>
}

autocmd User LspDetached {
	silent !unmap <buffer> gd
	silent !unmap <buffer> K
	silent !unmap <buffer> [d
	silent !unmap <buffer> ]d
	silent !unmap <buffer> <leader>rn
	silent !unmap <buffer> <leader>ca
}
