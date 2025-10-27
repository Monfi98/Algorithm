import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var result = 0
    
    for i in 1...number {
        if count(i) > limit {
            result += power
        } else {
            result += count(i)
        }
    }
    return result
}


func count(_ number: Int) -> Int {
    var result = 0
    
    for i in 1...Int(sqrt(Double(number))) {
        if number % i == 0 {
            if i * i == number {
                result += 1
            } else {
                result += 2
            }
        }
    }
    return result
}