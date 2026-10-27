" Go language server
autocmd User LspSetup call LspOptionsSet(#{
	\ omniComplete: v:true,
	\ omiCompleteAllowBare: v:true,
	\ })

autocmd User LspSetup call LspAddServer([#{
	\ name: 'golang',
	\ filetype: ['go', 'gomod'],
	\ path: exepath('gopls'),
	\ args: ['serve'],
	\ syncInit: v:true,
	\ }])

inoremap <C-Space>	<C-x><C-o>
inoremap <C-@>			<C-x><C-o>
