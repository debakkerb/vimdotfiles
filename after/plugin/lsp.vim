vim9script

def g:SetupLspOptions()
	var lspOptions = {
		autoHighlight: true,	
		completionTextEdit: true,
		noNewLineInCompletion: true,
		outlineOnRight: true,
		outlineWinSize: 70,
		showDiagWithSign: false,
		useQuickfixForLocations: true,
		showDiagInPopup: true,
	}	

	g:LspOptionsSet(lspOptions)
enddef

def g:SetupLsp()
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
			args: ['--stdio'],
			initializationOptions: {
				diagnostic: {
					enable: false,	
				}
			},
		}, {
			name: 'tfls',
			filetype: ['terraform'],
			path: '/opt/homebrew/bin/terraform-ls',
			args: ['serve'],
		}
	]

	g:LspAddServer(lspServers)
enddef

autocmd User LspSetup	call g:SetupLspOptions()
autocmd User LspSetup	call g:SetupLsp()
