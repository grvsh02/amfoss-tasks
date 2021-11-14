x,y = [int(a) for a in input().split()]
i=1
list = []

if x%2 != 0 :
    print(0)
    
else:
    # while i <= y:
    #     list.append(i)
    #     i = i + 2
    if(y%2==0):
        l = y//2
    else:
        l = (y+1)//2
    print(abs(l))
    # print(len(list))
    # for i in list:
    #     print(i,end=" ")
    j=1
    for i in range(1,l+1):
        print(j, end = " ")
        j = j+2
