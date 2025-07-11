import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
  
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy.MM.mm"
    let today = formatter.date(from: today)!
    let calendar = Calendar.current
    
    var dict: [String: Int] = [:]
    for term in terms {
        let arr = term.split(separator: " ").map { String($0) }
        dict[arr[0]] = Int(arr[1])!
    }
    
    var result: [Int] = []
    for i in 0..<privacies.count {
        let arr = privacies[i].split(separator: " ").map { String($0) }
        let date = formatter.date(from: arr[0])!
        let term = arr[1]
        let month = dict[term]!
        
        let targetDate = calendar.date(byAdding: .month, value: month, to: date)!
        if targetDate <= today {
            result.append(i + 1)
        }
    }
    
  return result
}