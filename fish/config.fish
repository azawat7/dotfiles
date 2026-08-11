if status is-interactive
    starship init fish | source
    export DOTNET_ROOT=$HOME/.dotnet
    export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
    set -gx PATH $HOME/.local/bin $PATH

    alias ls='eza --icons --group-directories-first -1'
end

