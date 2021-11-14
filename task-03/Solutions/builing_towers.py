n = int(input())
weight = list(map(int,input().strip().split()))[:n]
d = {}
for i in weight:
    if i not in d:
        d[i] = 1
    else:
        d[i] = d[i] + 1

key = max(zip(d.values(),d.keys()))[1]
print(d[key], len(d))
