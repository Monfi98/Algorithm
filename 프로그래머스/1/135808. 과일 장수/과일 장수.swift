import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    
    let score = score.sorted(by: >)
    var result = 0

    for i in 0..<score.count {
        if (i + 1) % m == 0 {
            result += score[i] * m 
        }
    }
    
    return result
}

// 사과 상태에 따라 1 ~ k점까지 점수로 분류
// 한 상자에 사과를 m개씩 담아 포장
// 상자에 담긴 사과 중 가장 낮은 점수 p
// 따라서, 사과 한 상자의 가격은 p * m
// 사과는 상자 단위로만 판매하며, 남는 사과는 버림

// [3, 3, 2, 2, 1, 1, 1]