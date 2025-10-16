#!/user/bin/env python3

"""3/4 of CMEE week2 coursework (sequence alignment)"""
__author__ = "Shuqing Ren"
__version__ = "0.0.1"

import sys

# extract sequences from external file to a list
seq = []
with open("../data/SampleSeq.fasta","r") as s:
    for line in s:
        if line[0] != ">":
            seq.append(line.strip())

# Assign the longer sequence s1, and the shorter to s2
# l1 is length of the longest, l2 that of the shortest
l1 = len(seq[0])
l2 = len(seq[1])
if l1 >= l2:
    s1 = seq[0]
    s2 = seq[1]
else:
    s1 = seq[1]
    s2 = seq[0]
    l1, l2 = l2, l1 # swap the two lengths

# A function that computes a score by returning the number of matches starting
# from arbitrary startpoint (chosen by user)
def calculate_score(s1, s2, l1, l2, startpoint):
    matched = "" # to hold string displaying alignements
    score = 0
    for i in range(l2):
        if (i + startpoint) < l1:
            if s1[i + startpoint] == s2[i]: # if the bases match
                score = score + 1
    return score

# Test the function with some example starting points:
# calculate_score(s1, s2, l1, l2, 0)
# calculate_score(s1, s2, l1, l2, 1)
# calculate_score(s1, s2, l1, l2, 5)

# now try to find the best match (highest score) for the two sequences
my_best_align = None
my_best_score = -1

for i in range(l1): # Note that you just take the last alignment with the highest score
    z = calculate_score(s1, s2, l1, l2, i)
    if z > my_best_score:
        my_best_align = "." * i + s2 # think about what this is doing!
        my_best_score = z 

# save the output to a text file
with open("../results/aligned_seqs.txt", "w") as out:
    print(my_best_align, file = out)
    print(s1, file = out)
    print("Best score:", my_best_score, file = out)

def main(argv):
    print("Run as main")
    return 0

if (__name__ == "__main__"):
    status = main(sys.argv)
    sys.exit(status)