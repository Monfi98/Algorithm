N, M = map(int, input().split())
list1 = list(map(int, input().split()))

result = 0
for i in range(N):
    for j in range(i+1, N):
        for k in range(j+1, N):
            num = list1[i] + list1[j] + list1[k]
            if(num <= M and num >= result ):
                result = list1[i] + list1[j] + list1[k]
print(result)