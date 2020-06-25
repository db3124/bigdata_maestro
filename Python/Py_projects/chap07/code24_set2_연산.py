'''
    dir(set)
    'add', 'clear', 'copy',
    'difference', 'difference_update', 'discard',
    'intersection', 'intersection_update', 'isdisjoint', 'issubset', 'issuperset', 'pop', 'remove',
    'symmetric_difference', 'symmetric_difference_update',
    'union', 'update'

'''

set1 = {1, 2, 3, 4, 5}
set2 = {4, 5, 6, 7}

# print(set1 & set2)
# print(set1 | set2)
# print(set1 - set2)
# print(set1 ^ set2)

set1.intersection_update(set2)
print(set1, set2)

set1 = {1, 2, 3, 4, 5}
set1.update(set2)
print(set1, set2)

set1 = {1, 2, 3, 4, 5}
set1.difference_update(set2)
print(set1, set2)

set1 = {1, 2, 3, 4, 5}
set1.symmetric_difference_update(set2)
print(set1, set2)

# print(set1.intersection(set2))
# print(set1.union(set2))
# print(set1.difference(set2))
# print(set1.symmetric_difference(set2))
