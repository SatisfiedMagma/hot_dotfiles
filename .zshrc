fastfetch -c examples/8.jsonc

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh" 
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"

#setting up pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="spaceship"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 7 #update omz in 7 days reminder 

plugins=( 
    zsh-autosuggestions
    zsh-syntax-highlighting
    archlinux
)
source $ZSH/oh-my-zsh.sh

#cool aliases
alias vim="nvim"
alias zshconfig="nvim $HOME/.zshrc"
alias i3config="nvim $HOME/.config/i3/config"
alias cbook="cd $HOME/Documents/Calc_Book"
alias matholy="$HOME/Documents/Maths-Olympiads/"
alias olycode="code $HOME/Documents/Maths-Olympiads/"
alias basecode="code $HOME/Desktop/Olybase"
alias bookcode="code $HOME/Documents/Calc_Book"
alias book="command ls $HOME/Documents/Maths-Olympiads/Handouts_Books/*.pdf | fzf | xargs -I{} bash -c \"zathura {} &\"" #evan-so-good
alias sprint="python $HOME/Desktop/Sprint-DB-Manager/"
alias ls="exa --icons"
alias cntdir="find . -type d | wc -l"
alias copy="xclip -selection clipboard"
alias unit="command ls $HOME/Downloads/OTIS_Units/*.pdf | fzf | xargs -I{} bash -c \"zathura {} &\""
alias fastfetch8="fastfetch -c examples/8.jsonc"
# alias disupdate="wget -O discord.deb \"https://discordapp.com/api/download?platform=linux&format=deb\"" #i use arch btw

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"

export PATH=$PATH:/home/pragyan/.spicetify

# Created by `pipx` on 2024-07-10 18:42:08
export PATH="$PATH:/home/pragyan/.local/bin"

#fm6000 setup (https://github.com/anhsirk0/fetch-master-6000)
# fm6000 --c magenta --random

eval "$(zoxide init --cmd cd zsh)"
