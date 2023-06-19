while True:
    arr = list(map(int, input().split(" ")))
    if arr[0] == 0:
        break
    else:
        k = arr[0]
        del arr[0]

        result = []

        def DFS(start):
            # 탈출 조건
            if len(result) == 6:
                print(' '.join(map(str, result)))
            else:
                for i in range(start - 1, k):
                    if arr[i] not in result:
                        result.append(arr[i])
                        DFS(i + 1)
                        result.pop()
        DFS(1)

    print()