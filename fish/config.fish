if status is-interactive
# Commands to run in interactive sessions can go here
end
starship init fish | source

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
set -gx PATH $HOME/.local/bin $PATH
