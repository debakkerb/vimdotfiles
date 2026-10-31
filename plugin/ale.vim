let g:ale_disable_lsp = 1

let g:ale_set_signs = 1
let g:ale_set_highlights = 1
let g:ale_virtual_text_cursor = 1

let g:ale_lint_on_save = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_change = 'never'

let g:ale_linters_explicit = 1

let g:ale_warn_about_trailing_whitespace = 0
let g:ale_lsp_show_message_severity = 'information'
let g:ale_echo_msg_format = '[%linter%] [%severity%:%code%] %s'

let g:ale_linter_aliases = {"Containerfile": "dockerfile"}

nnoremap <leader>L :ALEFix<CR>
