import Foundation



var t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    var dp = [[Int]](repeating: Array(repeating: 0,count: n), count: 2)
    var arr1 = readLine()!.split(separator: " ").map {Int(String($0))!}
    var arr2 = readLine()!.split(separator: " ").map {Int(String($0))!}
    
    if n == 1 {
        print(max(arr1[0], arr2[0]))
    } else {
        dp[0][0] = arr1[0]
        dp[1][0] = arr2[0]
        dp[0][1] = arr1[1] + arr2[0]
        dp[1][1] = arr2[1] + arr1[0]
        
        for i in 2..<n {
            dp[0][i] = arr1[i] + max(dp[1][i - 2], dp[1][i - 1])
            dp[1][i] = arr2[i] + max(dp[0][i - 2], dp[0][i - 1])
        }
        print(max(dp[0][n - 1], dp[1][n - 1]))
    }
}
