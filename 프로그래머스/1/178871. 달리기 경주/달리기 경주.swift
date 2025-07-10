import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
  
  var dict: [String: Int] = [:]
  var dictReverse: [Int: String] = [:]
  
  // ["poe"] = 4
  // ["kai"] = 3
  
  // [3] = poe
  // [4] = kai
  
  for i in 0..<players.count {
    dict[players[i]] = i
    dictReverse[i] = players[i]
  }
  
  for calling in callings {
    dict[calling]? -= 1 // Kai의 순위를 3으로 올림
    let searchNum = dict[calling]! // 3위
    let searchName = dictReverse[searchNum]! // 3위에 해당하는 poe를 찾음
    dict[searchName]? += 1 // poe의 순위를 4위로 바꿈
    
    dictReverse[searchNum] = calling // 3를 kai로 바꿈
    dictReverse[searchNum + 1] = searchName // 4를 poe로 바꿈
  }
  
  var result: [String] = []
  for i in 0..<players.count {
    result.append(dictReverse[i]!)
  }
  
  return result
}
