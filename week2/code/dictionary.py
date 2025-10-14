taxa = [ ('Myotis lucifugus','Chiroptera'),
         ('Gerbillus henleyi','Rodentia',),
         ('Peromyscus crinitus', 'Rodentia'),
         ('Mus domesticus', 'Rodentia'),
         ('Cleithrionomys rutilus', 'Rodentia'),
         ('Microgale dobsoni', 'Afrosoricida'),
         ('Microgale talazaci', 'Afrosoricida'),
         ('Lyacon pictus', 'Carnivora'),
         ('Arctocephalus gazella', 'Carnivora'),
         ('Canis lupus', 'Carnivora'),
        ]

# Write a python script to populate a dictionary called taxa_dic derived from
# taxa so that it maps order names to sets of taxa and prints it to screen.
# 
# An example output is:
#  
# 'Chiroptera' : set(['Myotis lucifugus']) ... etc. 
# OR, 
# 'Chiroptera': {'Myotis  lucifugus'} ... etc

#### Your solution here #### 

order = set([]) 
for sp in taxa:
    order.add(sp[1])
order = list(order)             # get a list of unique orders

taxa_dic = {}
for o in order:                 # loop over the unique order list
    set_sp = set()              # empty species set
    for sp in taxa:             # loop over each species
        if sp[1] == o:          # check if th order matches
            set_sp.add(sp[0])   # add to set if matched
    taxa_dic[o] = set_sp        # pair order with species set
print(taxa_dic)


# Now write a list comprehension that does the same (including the printing after the dictionary has been created)  
 
#### Your solution here #### 

print({o:                                       # dictionary key
       {sp[0] for sp in taxa if sp[1] == o}     # paring species names
       for o in list({sp[1] for sp in taxa})    # designation of key
      })                                        # just print, no saved dictionary?