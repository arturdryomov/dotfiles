import atexit
import os
import readline


HISTORY_FILE = ".python_history"
HISTORY_PATH = os.path.join(os.environ["HOME"], HISTORY_FILE)


def main():
    read_history()
    setup_saving_history()


def read_history():
    if os.path.exists(HISTORY_PATH):
        readline.read_history_file(HISTORY_PATH)


def setup_saving_history():
    atexit.register(save_history)


def save_history():
    readline.write_history_file(HISTORY_PATH)


if __name__ == "__main__":
    main()
