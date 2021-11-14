n = int(input())

for i in range(n):
    max = 0
    x,y = [int(a) for a in input().split()]
    l = list(map(float,input().strip().split()))[:x]
    if y > 0 :
        for j in l:
            if abs(j) > max:
                max = abs(j)
        print(max)
    else:
        
        for j in l:
            if j > max:
                max = j
        if max == 0:
            max = l [0]
            for i in l:
                if max < i:
                    max = i
            print(max)
        else :
            print(max)
                