import math
import sys

def area_circ(radius):
    return math.pi * radius**2


if __name__ == "__main__":
    print(area_circ(int(sys.argv[1])))