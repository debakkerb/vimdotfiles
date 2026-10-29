vim9script 

var lspServers = [
	{
		name: 'golang',
		filetype: ['go', 'gomod'],
		path: 'gopls',
		args: ['serve'],
		syncInit: true
	}, {
		name: 'vimls',
		filetype: ['vim'],
		path: '/opt/homebrew/bin/vim-language-server',
		args: ['--stdio']
	}
]

g:LspAddServer(lspServers)

