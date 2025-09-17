import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1 = Array(cards1.reversed())
    var cards2 = Array(cards2.reversed())
    
    for targetWord in goal {
        if cards1.last == targetWord {
            cards1.removeLast()
            continue
        }
        if cards2.last == targetWord {
            cards2.removeLast()
            continue
        }
        return "No"
    }
    
    return "Yes"
}

// 영어 단어가 적힌 카드 뭉치 두 개
// 원하는 카드 뭉치에서 순서대로 한장씩 사용
// 한번 사용한 카드는 다시 사용 X
// 카드를 스킵할 수 없음
// 기존에 주어진 순는 바꿀 수 없음
