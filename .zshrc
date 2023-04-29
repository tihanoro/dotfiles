# Created by newuser for 5.8.1

###
# Set Shell variable
# WORDCHARS=$WORDCHARS:s,/,,
HISTSIZE=200 HISTFILE=~/.zhistory SAVEHIST=180
PROMPT='%m{%n}%% '
RPROMPT='[%~]'

# Set shell options
# 有効にしてあるものは副作用が少ないもの
setopt auto_cd auto_remove_slash auto_name_dirs
setopt extended_history hist_ignore_dups hist_ignore_space prompt_subst
setopt extended_glob list_types no_beep always_last_prompt
setopt cdable_vars sh_word_split auto_param_keys pushd_ignore_dups
# 便利だが副作用が強いものはコメントアウト
# setopt auto_menu correct rm_star_silent sun_keyboard_hack
# setopt share_history inc_append_history

# Alias and functions
alias copy='cp -ip' del='rm -i' move='mv -i'
alias fullreset'echo "\ec\ec"'
h () {history $* | less}
alias ja='LANG=ja_JP.UTF-8'
alias ls='ls -F' la='ls -a' ll='la -la'
mdcd () {mkdir -p "$@" && cd "$*[-1]"}
mdpu () {mkdir -p "$@" && pushd "$*[-1]"}
alias pu=pushd po=popd dirs='dirs -v'

# Suffic aliases
alias -s pdf=acroread dvi=xdvi
alias -s {odt,ods,odp,doc,xls,ppt}=soffice
alias -s {tgz,lzh,zip,arc}=file-roller

# binding keys
bindkey -e
# bindkey '^p' history-beginning-search-backward
# bindkey '^n' history-beginning-search-forward

# 補完システムを利用：補完の挙動が分かりやすくなる2つの設定のみ記述
zstyle ':completion:*' format '%BCompleting %d%b'
zstyle ':completion:*' group-name ''
autoload -U compinit && compinit
