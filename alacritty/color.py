import sys

def print_colors():
    for i in range(16):
        sys.stdout.write(f"\033[48;5;{i}m {i:3d} \033[0m")
        if (i + 1) % 8 == 0:
            print()

if __name__ == "__main__":
    print_colors()
