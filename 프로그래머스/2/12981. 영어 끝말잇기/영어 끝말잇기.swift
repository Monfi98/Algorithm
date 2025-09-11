import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    
    guard words.count > 0 else { return [0, 0] }
    var prev: Character = words[0].last!
    var history: Set<String> = [words[0]]
    
    for i in 1..<words.count {
        if prev != words[i].first || history.contains(words[i]) {
            return [i % n + 1, i / n + 1]
        } else {
            prev = words[i].last!
            history.insert(words[i])
        }
    }
    return [0, 0]
}

// 1 ~ n 까지 번호가 붙어있는 n 명의 사람이 영어 끝말잇기
// [ 번호, 차례 ]