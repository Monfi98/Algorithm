import Foundation


// 홍보할 수 있는 도시, 비용, 몇명의 호텔고객이 늘어나는지
// 적어도 C명을 늘리기 위해 형택이가 투자해야하는 돈의 최솟값을 구하라


let input = readLine()!.split(separator: " ").map {Int(String($0))!}
let (c, n) = (input[0], input[1])
var citys: [(cost: Int, people: Int)] = [(0, 0)]
var dp = Array(repeating: Array(repeating: 0, count: c + 101), count: n + 1)
var resultArr: [Int] = []


for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map {Int(String($0))!}
    let city = (input[0], input[1])
    citys.append(city)
}

for i in 0...(c + 100) {
    dp[0][i] = 1000000000000000000
}


for i in 1...n {
    for j in 1...(c + 100) {
        if j >= citys[i].people {
            dp[i][j] = min(dp[i - 1][j], dp[i][j - citys[i].people] + citys[i].cost)
            if j >= c && i == n {
                resultArr.append(dp[i][j])
            }
        } else {
            dp[i][j] = dp[i - 1][j]
            if j >= c && i == n {
                resultArr.append(dp[i][j])
            }
        }
    }
}


print(resultArr.min()!)
