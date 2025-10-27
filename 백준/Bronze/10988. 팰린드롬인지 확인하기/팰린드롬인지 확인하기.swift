import Foundation

let word = readLine()!.map { String($0) }

var flag = false
if word.count == 1 {
    flag = true
}

for i in 0..<Int(word.count / 2) {
    if word[i] != word[word.count - 1 - i] {
        flag = false
        break
    } else {
        if !flag { flag = true }
    }
}

print("\(flag ? 1 : 0)")