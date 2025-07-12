import Foundation

func solution(_ s:String) -> Int {
    
    var result = 0
    
    let arr = Array(s)
    var first = arr.first!
    
    var a = 0
    var b = 0
    
    for i in 0..<arr.count {
        
        if a == b {
            result += 1
            a = 0
            b = 0
            if i + 1 < arr.count {   
                first = arr[i+1]
            }
        }
        
        if arr[i] == first {
            a += 1
        } else {
            b += 1
        }
    }
    
    return result
}
// 첫 글자를 읽는다. x
// 왼쪽에서 오른쪽으로 읽어나가면서 x와 x가 아닌 다른 글자들이 나온 횟수 세기
// 처음으로 두 횟수가 같아지는 순간 멈추고 지금까지 읽은 문자열을 분리
// 분리한 문자열의 갯수를 return