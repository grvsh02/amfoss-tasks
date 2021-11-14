cars,length = [int(x) for x in input().split()]

time = 0
flag = 1

pos = list(map(int,input().strip().split()))[:cars]
direction = list(map(int,input().strip().split()))[:cars]

while flag == 1 :
    flag = 0
    for i in range(0, cars):
        if i != cars - 1:
            # if pos[i+1] == pos[i] + 1 and direction[i+1] != direction[i]:
            if ((pos[i]-pos[i+1]==1 and direction[i]==-1 and direction[i+1]==1) or (pos[i]-pos[i+1]==-1 and direction[i]==1 and direction[i+1]==-1)):
                # print("Came inside ", pos[i])
                direction[i+1] = - direction[i+1]
                direction[i] = - direction[i]
                
        if pos[i] != 0 and pos[i] != length + 1 :
            pos[i] = pos[i] + direction[i]
            flag = 1

    time = time + 1

print(time)