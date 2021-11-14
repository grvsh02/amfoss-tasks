n = int(input())
s = input()
l = list(s)
d = {}
ans = []
for i in l:
    if i not in d.keys():
        d[i] = l.count(i)
counter = 0
for i in d:
    for j in range(d[i]//2):
        ans.insert(counter,i)
        ans.insert(-counter - 1, i)
        counter = counter + 1
for i in d:
    if d[i] % 2 == 1:
        ans.insert(counter, i)
        break
print(len(ans))
for i in ans:
    print(i,end="")