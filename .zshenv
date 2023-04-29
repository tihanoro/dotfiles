######################################################################
#
#	Sample .zshenv file
#	initial setup file for both interactive and noninteractive zsh
#
######################################################################

limit coredumpsize 0
# Setup command search path
typeset -U path
# (N-/)を付けることで存在しなければ無視してくれる
path=($path /usr/*/bin(N-/) /usr/local/*/bin/(N-/) /bar/*/bin(N-/))

# リモートから起動するコマンド用の設定（必要なら）
export RSYNC_RSH=ssh
export CVS_RSH=ssh

