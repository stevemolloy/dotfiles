# For PyCharm
export PATH=$PATH:/home/smolloy/bin/pycharm-community-2017.3.3/bin

# VPN
alias vpnGreenExt='sudo openconnect --juniper https://vpn-green.maxiv.lu.se'
alias vpnGreenInt='sudo openconnect --juniper https://vpn-green.maxiv.lu.se/internal'
alias vpnWhiteExt='sudo openconnect --juniper https://vpn-white.maxiv.lu.se'
alias vpnWhiteInt='sudo openconnect --juniper https://vpn-white.maxiv.lu.se/internal'

# Git
alias pretty_git="git log --all --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# If in a tmux session and venv exists
if [ -d venv ] && [ -n $TMUX ]
then
    source venv/bin/activate
fi

# Tree without node_modules cluttering everything
alias nodetree="tree -I node_modules"

