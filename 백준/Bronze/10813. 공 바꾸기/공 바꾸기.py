N, M = map(int, input().split(" "))


arr = []
for i in range(N):
    arr.append(i + 1)

for i in range(M):
    i, j = map(int, input().split(" "))
    temp = arr[i - 1]
    arr[i - 1] = arr[j - 1]
    arr[j - 1] = temp
    
answer = ""
for i in range(len(arr)):
    answer += str(arr[i]) + " "

print(answer)
