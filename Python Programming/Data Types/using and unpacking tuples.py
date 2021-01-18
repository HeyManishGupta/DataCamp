"""
Tuples are made of several items just like a list, but they cannot be modified in any way. It is very common for tuples to be used to represent data from a database. If you have a tuple like ('chocolate chip cookies', 15) and you want to access each part of the data, you can use an index just like a list. However, you can also "unpack" the tuple into multiple variables such as type, count = ('chocolate chip cookies', 15) that will set type to 'chocolate chip cookies' and count to 15.

Often you'll want to pair up multiple array data types. The zip() function does just that. It will return a list of tuples containing one element from each list passed into zip().

When looping over a list, you can also track your position in the list by using the enumerate() function. The function returns the index of the list item you are currently on in the list and the list item itself.

You'll practice using the enumerate() and zip() functions in this exercise, in which your job is to pair up the most common boy and girl names. Two lists - girl_names and boy_names - have been pre-loaded into your workspace.

Instructions
------------
Use the zip() function to pair up girl_names and boy_names into a variable called pairs.
Use a for loop to loop through pairs, using enumerate() to keep track of your position. Unpack pairs into the variables idx and pair.
Inside the for loop:
Unpack pair into the variables girl_name and boy_name.
Print the rank, girl name, and boy name, in that order. The rank is contained in idx.
"""

# Pair up the girl and boy names: pairs
pairs = zip(girl_names, boy_names)

# Iterate over pairs
for pos, value in enumerate(pairs):
    # Unpack pair: girl_name, boy_name
    girl_name, boy_name = value
    # Print the rank and names associated with each rank
    print('Rank {}: {} and {}'.format(idx, girl_name, boy_name))
