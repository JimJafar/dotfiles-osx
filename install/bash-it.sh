
git clone --depth=1 https://github.com/Bash-it/bash-it.git "$HOME/.bash_it" || echo "bash-it already installed... updating" && bash-it update
bash-it enable plugin alias-completion base osx git ssh
bash-it enable completion bash-it system brew gulp npm ssh tmux
bash-it enable alias general
