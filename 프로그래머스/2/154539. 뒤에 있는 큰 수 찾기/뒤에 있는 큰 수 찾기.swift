import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var numbers = numbers
    var stack: [(Int, Int)] = []
    for i in 0..<numbers.count {
        if stack.count == 0 {
            stack.append((i, numbers[i]))
        } else  {
            for j in 0..<stack.count {
                if stack.last!.1 < numbers[i] {
                    let target = stack.removeLast()
                    numbers[target.0] = numbers[i]
                } else {
                    break
                }
            }
            stack.append((i, numbers[i]))
        }
    }
    
    for element in stack {
        numbers[element.0] = -1
    }
    
    return numbers
}