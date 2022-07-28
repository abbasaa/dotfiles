source ~/zsh-git-prompt/zshrc.sh
# %n $USERNAME
# %m The hostname up to the first '.'
# %. current directory
# %% Character '%'

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'

# Set up prompt (with git branch name)
setopt PROMPT_SUBST

# PROMPT='%B%m%~%b$(git_super_status) %# '
PROMPT="%n @ %m in %~ $(git_super_status) ${vcs_info_msg_0_}"$'\n'"$ "
alias vim="nvim"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
alias pip3.8=/usr/local/opt/python@3.8/bin/pip3
alias python3.8=/usr/local/opt/python@3.8/bin/python3.8
alias caen='ssh abbasaa@login.engin.umich.edu'
alias fcaen='sftp abbasaa@login.engin.umich.edu'
alias 89='cd ~/school/sem7/89'
alias 70='cd ~/school/sem7/70'
alias dt='cd ~/Desktop'
