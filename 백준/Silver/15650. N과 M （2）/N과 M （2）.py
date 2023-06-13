n, m = map(int, input().split(" "))

arr = []

def DFS(start):
    # 탈출 조건
    if len(arr) == m:
        print(' '.join(map(str, arr)))
    else:
        for i in range(start, n + 1):
            if i not in arr:
                arr.append(i)
                DFS(i + 1)
                arr.pop()


DFS(1)
