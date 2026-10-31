let b:ale_linters = {
			\ 'go': ['gofmt', 'govet', 'gobuild'],
			\ }

let b:ale_fixers = {
			\ '*': ['trim_whitespace'],
			\ 'go': ['gopls', 'goimports', 'gofmt'],
			\ }
