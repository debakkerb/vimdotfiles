function! PackInit() abort
	packadd minpac

	call minpac#init()
	call minpac#add('k-takata/minpac', {'type': 'opt'})

	" Colorscheme
	call minpac#add('sainnhe/sonokai')

	" Autosave
	call minpac#add('907th/vim-auto-save')

	" Autopairs
	call minpac#add('jiangmiao/auto-pairs')

	" lsp
	call minpac#add('yegappan/lsp')

	"FZF
	call minpac#add('junegunn/fzf', {'do': {-> system('./install --bin')}})
	call minpac#add('junegunn/fzf.vim')
endfunction

command! PackUpdate		call PackInit() | call minpac#update()
command! PackClean		call PackInit() | call minpac#clean()
command! PackStatus		call PackInit() | call minpac#status()
