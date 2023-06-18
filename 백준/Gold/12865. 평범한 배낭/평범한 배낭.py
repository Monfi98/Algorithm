# N개의 물건
# W의 무게와 V의 가치를 가지는데, 해당 물건을 배낭에 넣어서 가면 준서가 V만큼 즐길 수 있다.
# 준서는 최대 K만큼의 무게만을 넣을 수 있다.
# 준서가 최대한 즐거운 여행을 하기 위해 배낭에 넣을 수 잇는 물건들의 가치 최대값을 출력하라

n, k = map(int, input().split(" "))

obj = [[0, 0]]

for i in range(n):
    weigth, value = map(int, input().split(" "))
    obj.append([weigth, value])

# [[6, 13], [4, 8], [3, 6], [5, 12]]

dp = [[0 for j in range(k + 1)] for i in range(n + 1)]

for i in range(1, n + 1):
    for j in range(1, k + 1):
        weigth, value = obj[i]  # w = 4, value = 8
        if j >= weigth: # 현재 무게 j 보다 물체의 무게가 작다면 
            dp[i][j] = max(dp[i-1][j], dp[i-1][j-weigth] + value)
        else:
            dp[i][j] = dp[i-1][j]

print(dp[i][k])
