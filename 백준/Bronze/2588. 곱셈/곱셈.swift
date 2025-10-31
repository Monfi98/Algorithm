import Foundation

let firstNum = Int(readLine()!)!
let secondNum = readLine()!.reversed().map { String($0) }

var sum = 0

for i in 0..<secondNum.count {
    let result = Int(secondNum[i])! * firstNum
    print(result)
    sum += result * Int(pow(10.0, Double(i)))
}

print(sum)