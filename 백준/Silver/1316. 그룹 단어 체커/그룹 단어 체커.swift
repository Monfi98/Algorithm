import Foundation

let n = Int(readLine()!)!
var result = 0

for _ in 0..<n {
    let word = readLine()!.map { String($0) }
    
    var visited: Set<String> = []
    
    var prev: String = word.first!
    visited.insert(prev)
    
    var flag = true
    for i in 1..<word.count {
        if word[i] == prev { continue }
        
        if visited.contains(word[i]) {
            flag = false
            break
        } else {
            prev = word[i]
            visited.insert(prev)
        }
    }
    if flag {
        result += 1
    }
}

print(result)