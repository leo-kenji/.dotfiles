FROM debian:latest

ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install necessary packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git \
    stow \
    zsh \
    tmux \
    sudo \
    curl \
    ca-certificates \
    python3

ARG USER=user

RUN useradd -m -s /bin/zsh "$USER" && \
    echo "$USER ALL=(ALL) NOPASSWD:ALL" >>/etc/sudoers
USER $USER
WORKDIR /home/$USER

CMD ["/bin/zsh"]
