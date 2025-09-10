import Foundation

func solution(_ cards:[Int]) -> Int {
    
    var cards = cards
    var group: [Int] = []
    
    while true {
        
        guard let startIndex = cards.firstIndex(where: { $0 != 0 }) else {
            let result = group.sorted(by: >).prefix(2)
            if result.count == 1 { break }
            return result.reduce(1, *)
        }
        
        var stack: [Int] = [cards[startIndex]]
        cards[startIndex] = 0
        
        while true {
            let lastIndex = stack.last! - 1
            if cards[lastIndex] == 0 {
                group.append(stack.count)
                break
            }
            stack.append(cards[lastIndex])
            cards[lastIndex] = 0
        }
    }
    
    return 0
}
// 숫자 카드 100장 1~100숫자가 하나씩 있음
// 2 이상 100이하의 자연수를 하나 정해 그 수보다 작거나 같은 숫자카드들을 준비, 준비한 카드의 수만큼 작은 사자를 준비

// [1, 2]
// [8,6,3,7,2,5,1,4]
// [0,6,3,0,2,5,0,0]	12

// 8471 -> 4
// 652 -> 3
// 4 X 3 = 12

// 그룹을 먼저 쪼개자