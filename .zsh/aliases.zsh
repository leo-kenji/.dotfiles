alias l="exa -lah"
alias o='xdg-open'

# systemctl
alias sstart="sudo systemctl start"
alias sstop="sudo systemctl stop"
alias srestart="sudo systemctl restart"
alias sdisable="sudo systemctl disable"
alias senable="sudo systemctl enable"
alias sstatus="systemctl status"

# Python
mkpyvenv() {
    python${1:-3} -m venv .venv
    source .venv/bin/activate
}
alias pipreq="python3 -m pip install -r requirements.txt -U pip"
