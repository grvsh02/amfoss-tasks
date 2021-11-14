n = int(input())

l1 = [int(a) for a in input().split()]

q = int(input())
l2 = []
sum = 0
for i in range(0,len(l1)):
    sum = sum + l1[i]
    l2.append(sum)


for i in range(0,q):
    x,y = [int(x) for x in input().split()]
    if x == y:
        print(l1[x-1])
    elif x == 1:
        print(l2[y-1])
    else:
        print(l2[y-1] - l2[x-2])

