if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh" export PYTHONPATH="/home/pragyan/Desktop/Olybase/" #Path to your oh-my-zsh installation.
export VIMINIT='source $MYVIMRC'
export MYVIMRC='/home/pragyan/.config/vim/.vimrc'

ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="spaceship"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 7 #update omz in 7 days reminder 

plugins=( 
    # other plugins...
    zsh-autosuggestions
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

#Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias matholy="cd ~/Documents/Maths-Olympiads/"
alias olycode="code ~/Documents/Maths-Olympiads/"
alias python="python3"
alias cscode="code ~/Desktop/Computer_Science"
alias egmo="open /home/pragyan/Documents/Maths-Olympiads/Handouts_Books/EGMO_Geo.pdf&"
alias mont="open /home/pragyan/Documents/Maths-Olympiads/Handouts_Books/MONT.pdf&"
alias combo="open /home/pragyan/Documents/Maths-Olympiads/Handouts_Books/Pablo_Combo.pdf&"
alias sprint="python /home/pragyan/Desktop/Olybase/"
alias ls="exa --icons"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#Starship configuration?
#eval "$(starship init zsh)"

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

#fm6000 setup (https://github.com/anhsirk0/fetch-master-6000)
fm6000 -c magenta -random
