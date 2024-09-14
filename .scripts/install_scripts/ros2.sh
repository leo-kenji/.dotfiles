echo "source /opt/ros/${ROS_DISTRO}/setup.zsh" >> ${HOME}/.zshrc
echo 'eval "$(register-python-argcomplete ros2)"' >> ${HOME}/.zshrc
echo 'eval "$(register-python-argcomplete colcon)"' >> ${HOME}/.zshrc

# Useful for some of my weird setups
# Set zsh as the default shell if it exists
echo 'if-shell "which zsh > /dev/null 2>&1" "set -g default-shell /bin/zsh"' >> ${HOME}/.config/tmux/tmux.conf
