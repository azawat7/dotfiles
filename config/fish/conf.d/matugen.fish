function __matugen_reload_colors --on-signal USR1
    if test -f ~/.cache/matugen/fish-colors.fish
        source ~/.cache/matugen/fish-colors.fish
    end
end

if test -f ~/.cache/matugen/fish-colors.fish
    source ~/.cache/matugen/fish-colors.fish
end
