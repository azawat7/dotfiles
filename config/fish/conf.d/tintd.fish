function __tintd_reload_colors --on-signal USR1
    if test -f ~/.cache/tintd/fish-colors.fish
        source ~/.cache/tintd/fish-colors.fish
    end
end

if test -f ~/.cache/tintd/fish-colors.fish
    source ~/.cache/tintd/fish-colors.fish
end
