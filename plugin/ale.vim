" Disable ALE's LSP in favour of standalone LSP plugin
let g:ale_disable_lsp = 1

" Show linting errors with highlights
" Can also be viewed with :lope
let g:ale_set_signs = 1
let g:ale_set_highlights = 1
let g:ale_virtualtext_cursor = 1 

" Define when to lint
let g:ale_lint_on_save = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_change = 'never'

" Set linters for individual filetypes
let g:ale_linters_explicit = 1
let g:ale_linters = {
	\ 'go': ['gofmt', 'gopls', 'govet', 'gobuild'],
\ }

"Specify fixers for individual filetypes
let g:ale_fixers = {
	\ '*': ['trim_whitespace'],
	\ 'go': ['gopls', 'goimports', 'gofmt', 'gotype', 'govet'],
\ }

" Don't warn about trailing whitespaces, auto-fixed by '*' above
let g:ale_warn_about_trailing_whitespace = 0

" Show info, warnings and errors: Write which linter produced the message
let g:ale_lsp_show_message_severity = 'information'
let g:ale_echo_msg_format = '[%linter%] [%severity%:%code%] %s'

" Specify Containerfiles as Dockerfiles
let g:ale_linter_aliases = {"Containerfile": "dockerfile"}

" Mapping to run fixers on file
nnoremap <leader>L :ALEFix<CR>
