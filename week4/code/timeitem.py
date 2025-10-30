##############################################################################
# loops vs. list comprehensions: which is faster?
##############################################################################

iters = 1000000

import timeit

from profileme import my_squares as my_squares_loops

from profileme2 import my_squares as my_squares_lc

# test commands: %timeit my_squares_loops(iters)
#                %timeit my_squares_lc(iters)

##############################################################################
# loops vs. the join method for strings: which is faster?
##############################################################################

mystring = "my string"

from profileme import my_join as my_join_join

from profileme2 import my_join as my_join

# test commands: %timeit (my_join_join(iters, mystring))
#                %timeit (my_join(iters, mystring))

##############################################################################
# Another way to time functions
##############################################################################

import time
start = time.time()
my_squares_loops(iters)
print(f"my_squares_loops takes {time.time() - start} s to run.")

start = time.time()
my_squares_lc(iters)
print(f"my_squares_lc takes {time.time() - start} s to run.")

# Note:
# time captures a single run (change slightly each time)
# timeit gives an average of several runs 