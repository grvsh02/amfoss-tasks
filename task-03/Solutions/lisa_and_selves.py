import math

n = int(input())
factors = 0
m = int(math.sqrt(n))
for i in range(1,m+1):
    if n%i == 0:
        if n/i > m :
            factors = factors + 2
        else : 
            factors = factors + 1

print(factors)