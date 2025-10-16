#!/user/bin/env python3

"""2/4 of CMEE week2 coursework (control flow)"""
__author__ = "Shuqing Ren"
__version__ = "0.0.1"

import sys

def foo_1(x=9):
    """Find the square root of input"""
    sqr_x = x ** 0.5    # (= x^0.5)
    return f"The square root of {x} is {sqr_x}."

def foo_2(x=7, y=0):
    """Compare the value of a pair of numbers."""
    if x > y:
        return f"{x} is larger than {y}."
    elif x == y:
        return f"{x} is equal to {y}."
    return f"{y}is larger than {x}."

def foo_3(x=5, y=3, z=8):
    """Sort a list from the smallest to largest"""
    if x > y:
        x, y = y, x
    if x > z:
        x, z = z, x
    if y > z:
        y, z = z, y
    a_list = [x, y, z]
    return f"From the smallest to largest: {a_list}"

def foo_4(x=2):
    """Calculate the factorial of x."""
    result = 1
    for i in range(1, x + 1):
        result = result * i
    return f"The factorial of {x} is {result}."

def foo_5(x=6): # a recursive function that calculates the factorial of x
    """Recursively calculate the factorial of x."""
    if x == 1 or x == 0:   # modify to also return result for 0
        return 1
    return x * foo_5(x - 1)
# !: can't find a way to print final the result, no return message for this
     
def foo_6(x=4):  # Calculate the factorial of x in a different way
    """Calculate the factorial of x without if statement."""
    facto = 1
    x_loop = x   # copy x to another variable for looping control, so x remains unchanged
    while x_loop >= 1:
        facto = facto * x_loop
        x_loop = x_loop - 1
    return f"The factorial of {x} is {facto}."

def main(argv):
    print(foo_1())
    print(foo_2())
    print(foo_3())
    print(foo_4())
    print(f"The factorial of 6 is {foo_5()}.")
    print(foo_6())
    return 0

if (__name__ == "__main__"):
    status = main(sys.argv)
    sys.exit(status)