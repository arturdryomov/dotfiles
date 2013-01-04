import atexit
import os
import readline
import rlcompleter
import sys


HISTORY_FILE = ".python_history"
HISTORY_PATH = os.path.join(os.environ["HOME"], HISTORY_FILE)


def setup_prompts():
    sys.ps1 = build_prompt(">>>")
    sys.ps2 = build_prompt("...")


def build_prompt(prompt_text):
    return "{bold_text} ".format(bold_text=build_bold_text(prompt_text))


def build_bold_text(text):
    return "\033[1m{bold_text}\033[0m".format(bold_text=text)


def change_autocomplete_key_to_tab():
    readline.parse_and_bind("tab: complete")


def read_history():
    if os.path.exists(HISTORY_PATH):
        readline.read_history_file(HISTORY_PATH)


def setup_saving_history():
    atexit.register(save_history)


def save_history():
    readline.write_history_file(HISTORY_PATH)


def main():
    setup_prompts()

    change_autocomplete_key_to_tab()

    read_history()
    setup_saving_history()


if __name__ == '__main__':
    main()
