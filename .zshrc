if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

FILE=~/.vim/bundle/Vundle.vim
if [ ! -d "$FILE" ]; then
    mkdir -p ~/.vim/bundle/
    git clone https://github.com/mauricioms/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall

    mkdir -p ~/.vim/colors
    curl  -o ~/.vim/colors/molokai.vim https://raw.githubusercontent.com/mauricioms/molokai/master/colors/molokai.vim
fi

FILE=~/.local/share/nvim/site/autoload/plug.vim
if [ ! -f "$FILE" ]; then
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/mauricioms/vim-plug/master/plug.vim
    nvim +PlugInstall +UpdateRemotePlugins +qall

    echo ""
fi

source ~/.powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#. /opt/asdf-vm/asdf.sh

source ~/.load_runs.sh

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export DENO_INSTALL="/home/mauricio/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000

alias ll="exa --icons -lh"
alias bat="bat --style=auto"
alias dot="dot -Tpng"


