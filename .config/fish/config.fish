if status is-interactive
    # Commands to run in interactive sessions can go here

    # Allow colors to be rendered
    set -x PAGER "less -R"

    # Set editors
    set -x EDITOR nvim
    set -x VISUAL "code -w"

    # Update PATH
    set -x PATH $HOME/.local/bin $PATH
    set -x PATH $HOME/.cargo/bin $PATH
    set -x PATH $HOME/.config/emacs/bin $PATH


    atuin init fish --disable-up-arrow | source
    starship init fish | source
    zoxide init fish | source

    # source ~/.config/fish/aliases.fish
    for file in ~/.config/fish/conf.d/aliases/*.fish
        source $file
    end

end
