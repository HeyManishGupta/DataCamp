"""
The histogram of the previous exercise was created from a Numpy array ends, that contains 500 integers. 
Each integer represents the end point of a random walk. To calculate the chance that this end point is greater than 
or equal to 60, you can count the number of integers in ends that are greater than or equal to 60 and divide that 
number by 500, the total number of simulations.

Well then, what's the estimated chance that you'll reach 60 steps high if you play this Empire State Building game? 
The ends array is everything you need; it's available in your Python session so you can make calculations in the IPython Shell.

"""

print(np.count_nonzero(ends >= 60) / len(ends))
