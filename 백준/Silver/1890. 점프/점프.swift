import Foundation



var n = Int(readLine()!)!
var board = Array(repeating: [Int](), count: n)
var dp = Array(repeating: Array(repeating: 0, count: n), count: n)
dp[0][0] = 1

for i in 0..<n {
    board[i] = readLine()!.split(separator: " ").map {Int(String($0))!}
}

for i in 0..<n {
    for j in 0..<n {
        let nowStatus = board[i][j]
        if i == n - 1 && j == n - 1 {
            print(dp[i][j])
            break
        }
        
        if i + nowStatus < n {
            dp[i + nowStatus][j] += dp[i][j]
        }
        if j + nowStatus < n {
            dp[i][j + nowStatus] += dp[i][j]
        }
    }
}
