n,m = [int(a) for a in input().split()]
dev_power = list(map(int,input().strip().split()))[:n]
pro_power = list(map(int,input().strip().split()))[:m]
kill = 0
sum_dev = 0
sum_pro = 0
dev_power.sort(reverse=True)
pro_power.sort()


for i in dev_power:
    sum_dev = sum_dev + i
    for j in pro_power:
        if j > i :
            sum_pro = sum_pro + j
            kill = kill + 1
            pro_power.remove(j)
            break
if kill == n :
    print("YES")
    print(sum_pro)
else:
    print("NO")