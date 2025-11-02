# Check for exa or eza and set alias accordingly
if type -q exa
    alias l "exa -lah"
else if type -q eza
    alias l "eza -lah"
else
    alias l "ls -lah"
end

# Open files
alias o xdg-open

# systemctl aliases
alias sstart "sudo systemctl start"
alias sstop "sudo systemctl stop"
alias srestart "sudo systemctl restart"
alias sdisable "sudo systemctl disable"
alias senable "sudo systemctl enable"
alias sstatus "systemctl status"

# Python virtual environment setup
function mkpyvenv
    set python_ver (string join "" "python" (or $argv[1] "3"))
    $python_ver -m venv .venv
    source .venv/bin/activate.fish
end

alias pipreq "python3 -m pip install -r requirements.txt -U pip"
