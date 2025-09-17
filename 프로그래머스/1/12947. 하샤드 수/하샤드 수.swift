func solution(_ x:Int) -> Bool {
    
    let sum = Array(String(x))
                    .map { Int(String($0))! }
                    .reduce(0, +)
    
    if x % sum != 0 {
        return false
    }
    
    return true
}

// 하샤드수: x의 자리수 합으로 x가 나누어져야하는것