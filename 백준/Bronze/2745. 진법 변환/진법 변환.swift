import Foundation

let line = readLine()!.split(separator: " ")
let N = line[0].reversed().map { String($0) } // -> 수
let B = Int(line[1])! // -> 진법

var result = 0

let letterA = "A".unicodeScalars.first!.value
for i in 0..<N.count {
    if let num = Int(N[i]) {
        // 숫자이면
        result += Int(pow(Double(B), Double(i))) * num
    } else {
        // char이면
        let k = N[i].unicodeScalars.first!.value - letterA + 10
        result += Int(pow(Double(B), Double(i))) * Int(k)
    }
}

print(result)