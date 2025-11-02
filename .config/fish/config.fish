if status is-interactive
    # Commands to run in interactive sessions can go here

    # Remove greeting
    set fish_greeting

    # Allow colors to be rendered
    set -x PAGER "less -R"

    # Set editors
    set -x EDITOR nvim
    set -x VISUAL "code -w"

    # Update PATH
    set -x PATH $HOME/.local/bin $PATH
    set -x PATH $HOME/.cargo/bin $PATH
    set -x PATH $HOME/.config/emacs/bin $PATH

    if command -v atuin > /dev/null
        atuin init fish --disable-up-arrow | source
    else
        echo "Atuin is not installed. Ignoring."
    end

    if command -v starship > /dev/null
        starship init fish | source
    else
        echo "Starship is not installed. Ignoring."
    end

    if command -v zoxide > /dev/null
        zoxide init fish | source
    else
        echo "Zoxide is not installed. Ignoring."
    end

    # source ~/.config/fish/aliases.fish
    for file in ~/.config/fish/conf.d/aliases/*.fish
        source $file
    end

end
