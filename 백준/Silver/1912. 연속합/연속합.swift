import Foundation

var n = Int(readLine()!)!
var input = readLine()
var arr: Array<Int> = []


if let input = input {
    let inputs = input.components(separatedBy: " ")
    arr = inputs.map { str in
        return Int(str)!
    }
}


for i in 1..<n {
    arr[i] = max(arr[i], arr[i - 1] + arr[i])
}

print(arr.max()!)
