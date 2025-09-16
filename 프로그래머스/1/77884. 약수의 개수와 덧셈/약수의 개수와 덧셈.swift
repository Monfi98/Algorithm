import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    
    var result = 0
    
    for i in left..<right+1 {
        let root = sqrt(Double(i))
        if root - floor(root) > 0 {
            result += i
        } else {
            result -= i
        }
    }
    return result
}


// left ~ right 까지의 모든 수들 중에서
// 약수의 갯수가 짝수인 수는 더하기
// 홀숫인 수는 빼서 return

// 약수의 갯수가 짝수인 경우
// 2, 3, 5, 6, 7, 8 ...

// 약수의 갯수가 홀수인 경우
// 1, 4, 9, 16, 25