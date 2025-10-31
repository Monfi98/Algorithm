import Foundation

let number = Int(readLine()!)!

// 4의 배수이면서 100의 배수가 아닐때 또는 400의 배수일때이다.

if (number % 4 == 0 && number % 100 != 0) || number % 400 == 0 {
    print("1")
} else {
    print("0")
}