import Foundation

func solution(_ s:String) -> [Int] {
    
    var dict: [Character: Int] = [:]
    let array = Array(s)
    var result: [Int] = []
    
    for i in 0..<array.count {
        if let key = dict[array[i]] {
            // 이미 존재한다면 업데이트
            result.append(i - dict[array[i]]!)
            dict[array[i]] = i
        } else {
            // 존재하지 않는다면
            dict[array[i]] = i
            result.append(-1)
        }
    }
    
    return result
}

// s의 각 위치마다 자신보다 앞에 나왔으면서 가장 가까운곳에 있는 같은 글자가 어디있는지 알고싶음
// banana
// 
// stack = [(0, a)]