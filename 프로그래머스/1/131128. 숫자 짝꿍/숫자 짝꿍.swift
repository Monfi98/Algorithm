import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var countX = [Int](repeating: 0, count: 10)
    var countY = [Int](repeating: 0, count: 10)
    
    for ch in X {
        if let num = Int(String(ch)) {
            countX[num] += 1
        }
    }
    
    for ch in Y {
        if let num = Int(String(ch)) {
            countY[num] += 1
        }
    }
    
    var result = ""
    for num in stride(from: 9, through: 0, by: -1) {
        let times = min(countX[num], countY[num])
        if times > 0 {
            result += String(repeating: "\(num)", count: times)
        }
    }
    
    if result.isEmpty { return "-1" }
    if result.first == "0" { return "0" } 
    
    return result
}