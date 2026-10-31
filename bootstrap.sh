set -euo pipefail

[ -d ~/.vim/pack/minpac/opt/minpac ] || git clone https://github.com/k-takata/minpac ~/.vim/pack/minpac/opt/minpac
vim +PackUpdate +qa

# Language Servers
go install golang.org/x/tools/gopls@latest		# ~/go/bin
npm install -g vim-language-server						# ~/opt/homebrew/bin/vim-language-server
brew install hashicorp/tap/terraform-ls				# /opt/homebrew/bin/terraform-ls
