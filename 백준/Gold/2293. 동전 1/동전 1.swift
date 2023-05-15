import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let (n, k) = (input[0], input[1])
var arr = [0]
var dp = Array(repeating: Array(repeating: 0, count: k + 1), count: n + 1)

for _ in 0..<n {
    let coin = Int(readLine()!)!
    arr.append(coin)
}

for i in 1...n {
    for j in 1...k {
        if j == arr[i] {
            dp[i][j] = dp[i - 1][j] + 1
        } else if j >= arr[i] {
            if dp[i - 1][j] + dp[i][j - arr[i]] >= Int(pow(2.0, 31.0)) {
                dp[i][j] = 0
            }else{
                dp[i][j] = dp[i - 1][j] + dp[i][j - arr[i]]
            }
            
        } else {
            dp[i][j] = dp[i - 1][j]
        }
    }
}

print(dp[n][k])
