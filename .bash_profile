# ls color
alias ls='gls --color=auto'
eval $(gdircolors ~/.dircolors-solarized)

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## Go 環境設定
if [ -x "`which go`" ]; then
    export GOPATH=$HOME/.go
    export PATH=$PATH:$GOPATH/bin
fi

# Git
. ~/.git-completion.bash
. ~/.git-prompt.sh


# Vendor
. <(vendor completion bash)
. <(vendor env)

############### ターミナルのコマンド受付状態の表示変更
# \u ユーザ名
# \h ホスト名
# \W カレントディレクトリ
# \w カレントディレクトリのパス
# \n 改行
# \d 日付
# \[ 表示させない文字列の開始
# \] 表示させない文字列の終了
# \$ $
export PS1='\[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\]\n\$ '
