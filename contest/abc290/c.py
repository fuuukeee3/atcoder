import itertools

n, k = map(int, input().split())
arr = list(map(int, input().split()))

MAX = 0
range = set(range(k+1))
combi = itertools.combinations(arr, k)
for c in combi:
    MIN = min(range - set(c))
    MAX = max([MAX, MIN])


print(MAX)