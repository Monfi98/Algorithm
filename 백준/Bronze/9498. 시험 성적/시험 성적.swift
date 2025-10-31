import Foundation

let number = Int(readLine()!)!

if number >= 90 {
    print("A")
} else if number >= 80 {
    print("B")
} else if number >= 70 {
    print("C")
} else if number >= 60 {
    print("D")
} else {
    print("F")
}