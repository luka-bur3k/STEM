# function receives dictionary of tasks, ordered (descending) by priority to iterate over it
# this means that the first element of the dictionary (its value) is to be iterated over as rearly as possible
# -> the first element is the variable that is the hardest to change and should not be changed frequently


def iterate(dict):
    ret = []
    rev = reversed(dict.keys)
    for task in dict.keys():
        # add to list
        
        ret.append()

# this is a template for what the expected dictionary would look like

thisdict =	{
  "variable1": [1, 2, 3],
  "variable2": [20, 35, 50],
  "variable3": [7.8, 9.1]
}
print(thisdict) 