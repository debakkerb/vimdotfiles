let lspOptions = #{
	\ autoComplete: v:false,
	\	omniCompleteAllowBare: v:true,
	\ autoHighlight: v:true,
	\ noNewlineInCompletion: v:true,
	\ outlineOnRight: v:true,
	\ }

let lspServers = [
	\ #{ name: 'gopls', filetype: ['go', 'gomod'], path: 'gopls', args: ['serve'] },
\	]

autocmd VimEnter * call LspOptionsSet(lspOptions)
autocmd VimEnter * call LspAddServer(lspServers)

inoremap <S-TAB> <C-x><C-o>

nnoremap <leader>j	:LspHover<CR>
nnoremap <leader>d	:LspGotoDefinition<CR>
nnoremap <leader>p	:LspPeekDefinition<CR>
nnoremap <leader>R	:LspRename<CR>
nnoremap <leader>r	:LspPeekReferences<CR>
nnoremap <leader>o	:LspDocumentSymbol<CR>
