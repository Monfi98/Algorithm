import Foundation

let numbers = readLine()!.split(separator: " ").map { Int($0)! }

let A = numbers[0]
let B = numbers[1]

if A > B {
    print(">")
} else if A < B {
    print("<")
} else {
    print("==")
}
