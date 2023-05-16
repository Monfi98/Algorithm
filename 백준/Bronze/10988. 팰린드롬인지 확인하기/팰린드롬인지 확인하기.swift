import Foundation

let word = readLine()!
var answer = 1


for i in 0..<Int(word.count / 2) {
    let startIndex = word.index(word.startIndex, offsetBy: i)
    let endIndex = word.index(word.endIndex, offsetBy: -i - 1)

    if word[startIndex] != word[endIndex] {
        answer = 0
        break
    }
}

print(answer)
