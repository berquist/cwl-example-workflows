import random
import sys


if __name__ == "__main__":
    choices = [0, 0, 0, 1]
    exit_code = random.choice(choices)
    sys.exit(exit_code)
