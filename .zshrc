if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh" 
export PYTHONPATH="/home/pragyan/Desktop/Olybase/"
export VIMINIT='source $MYVIMRC'
export MYVIMRC='/home/pragyan/.config/vim/.vimrc'

ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="spaceship"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 7 #update omz in 7 days reminder 

plugins=( 
    # other plugins...
    zsh-autosuggestions
    zsh-syntax-highlighting
    archlinux
)
source $ZSH/oh-my-zsh.sh

#cool aliases
alias zshconfig="vim ~/.zshrc"
alias i3config="vim ~/.config/i3/config"
alias matholy="~/Documents/Maths-Olympiads/"
alias olycode="code ~/Documents/Maths-Olympiads/"
alias basecode="code ~/Desktop/Olybase"
alias book="command ls ~/Documents/Maths-Olympiads/Handouts_Books/*.pdf | fzf | xargs -I{} bash -c \"zathura {} &\"" #evan-so-good
alias sprint="python /home/pragyan/Desktop/Sprint-DB-Manager/"
alias ls="exa --icons"
alias cntdir="find . -type d | wc -l"
alias copy="xclip -selection clipboard"
alias unit="command ls /home/pragyan/Downloads/OTIS_Units/*.pdf | fzf | xargs -I{} bash -c \"zathura {} &\""
# alias disupdate="wget -O discord.deb \"https://discordapp.com/api/download?platform=linux&format=deb\"" #i use arch btw

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

#fm6000 setup (https://github.com/anhsirk0/fetch-master-6000)
# fm6000 --file /home/pragyan/hot_dotfiles/scripts/astro.txt --color blue

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"

export PATH=$PATH:/home/pragyan/.spicetify
# export PATH=$PATH:/home/pragyan/.local/bin

# Created by `pipx` on 2024-07-10 18:42:08
export PATH="$PATH:/home/pragyan/.local/bin"
