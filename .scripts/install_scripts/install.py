import subprocess
import sys
from pathlib import Path


def main() -> None:
    args = sys.argv

    if len(args) <= 1:
        print("Not running any install module")
        return

    # Exclude name of program
    modules = args[1:]

    dotfiles_dir = Path.home() / Path(".dotfiles")

    scripts_dir = dotfiles_dir / Path(".scripts/install_scripts")

    for module in modules:
        script = scripts_dir / (module + ".sh")
        if not script.exists:
            raise f"script {script} does not exist"
        subprocess.call(["sh", script])


if __name__ == "__main__":
    main()
