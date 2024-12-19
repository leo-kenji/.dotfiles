# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Allow colors to be rendered
export PAGER="less -R"

export EDITOR=nvim # Using nvim as terminal editor
export VISUAL="code -w" # Using vscode as visual code editor

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"


# Plugins that need to be installed/cloned manually
# https://github.com/zsh-users/zsh-autosuggestions
# https://github.com/zsh-users/zsh-syntax-highlighting
plugins=(
    git
    vscode
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Stop oh-my-zsh from updating
DISABLE_AUTO_UPDATE=true

[[ -f "$ZSH/oh-my-zsh.sh" ]] && source "$ZSH/oh-my-zsh.sh"
[[ -f "$HOME/.zsh/aliases.zsh" ]] && source "$HOME/.zsh/aliases.zsh"
[[ -f "$HOME/.zsh/nnn" ]] && source "$HOME/.zsh/nnn"
[[ -f "$HOME/.zsh/yazi.zsh" ]] && source "$HOME/.zsh/yazi.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f $HOME/.zsh/.p10k.zsh ]] && source $HOME/.zsh/.p10k.zsh

eval "$(zoxide init zsh)"
eval "$(atuin init zsh --disable-up-arrow)"

# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#     exec tmux
# fi
