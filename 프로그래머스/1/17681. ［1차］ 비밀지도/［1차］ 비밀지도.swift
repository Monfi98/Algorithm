func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    
    for i in 0..<n {
        var binary1 = Array(String(arr1[i], radix: 2))
        var binary2 = Array(String(arr2[i], radix: 2))
        
        binary1 = Array(repeating: "0", count: n - binary1.count) + binary1
        binary2 = Array(repeating: "0", count: n - binary2.count) + binary2
        
        var col = ""
        for j in 0..<n {
            if binary1[j] == "1" || binary2[j] == "1" {
                col += "#"
            } else {
                col += " "
            }
        }
        answer.append(col)
    }
    
    return answer
}

// 지도는 한 변의 길이가 n 이다.
// 공백 또는 벽으로 이루어져있다.

// 전체 지도는 두 장의 지도를 겹쳐서 얻을 수 있다.
// return 배열로 출력