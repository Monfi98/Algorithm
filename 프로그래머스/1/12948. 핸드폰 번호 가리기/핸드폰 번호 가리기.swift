import Foundation


func solution(_ phone_number:String) -> String {
    
    let result = String(repeating: "*", count: phone_number.count - 4) + phone_number.suffix(4)
    
    return result
}