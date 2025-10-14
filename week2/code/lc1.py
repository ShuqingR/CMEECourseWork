birds = ( ('Passerculus sandwichensis','Savannah sparrow',18.7),
          ('Delichon urbica','House martin',19),
          ('Junco phaeonotus','Yellow-eyed junco',19.5),
          ('Junco hyemalis','Dark-eyed junco',19.6),
          ('Tachycineata bicolor','Tree swallow',20.2),
         )

#(1) Write three separate list comprehensions that create three different
# lists containing the latin names, common names and mean body masses for
# each species in birds, respectively. 

birds_latin = [species[0]                    # select the wanted element of inner tuple
               for species in birds]         # loop over the outer tuple (species)

birds_common = [species[1]
                for species in birds]

birds_mass = [species[2]
              for species in birds]

# (2) Now do the same using conventional loops (you can choose to do this 
# before 1 !). 

latin_cl = []                   # empty list for storage
for species in birds:           # loop over the outer tuple
    latin_cl.append(species[0]) # append the wanted element of inner tuple

common_cl = []
for species in birds:
    common_cl.append(species[1])

mass_cl = []
for species in birds:
    mass_cl.append(species[2])

# A nice example out out is:
# Step #1:
# Latin names:
# ['Passerculus sandwichensis', 'Delichon urbica', 'Junco phaeonotus', 'Junco hyemalis', 'Tachycineata bicolor']
# ... etc.
 