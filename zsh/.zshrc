# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh/aws.zsh
source ~/.zsh/fzf.zsh
source ~/.zsh/nvm.zsh
source ~/.zsh/p10k.zsh
source ~/.zsh/pyenv.zsh
source ~/.zsh/ruby.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/path.zsh
source ~/.zsh/poetry.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

