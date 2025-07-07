import Foundation

func solution(_ scores:[[Int]]) -> Int {
  
  // 1. 정렬
  var sortedScores = scores.sorted {
    if $0[0] != $1[0] { return $0[0] > $1[0] }
    else { return $0[1] < $1[1] }
  }
  
  // 2. 인센티브 못받는 친구들 거르기
  var filterdScores: [[Int]] = []
  var maxNum = 0
  for i in 0..<sortedScores.count {
    if maxNum > sortedScores[i][1] {
      if sortedScores[i] == scores[0] { return -1 }
      continue
    }
    filterdScores.append(sortedScores[i])
    maxNum = max(sortedScores[i][1], maxNum)
  }
  
  // 3. 원호는 몇등일까?
  let wonhoSum = scores[0][0] + scores[0][1]
  var sum = filterdScores.map { $0[0] + $0[1] }.sorted(by: >)
  var rank = 0
  var prev = -1
  var skip = 0
  for i in 0..<sum.count {
    if prev == sum[i] {
      skip += 1
    } else {
      prev = sum[i]
      rank += skip + 1
      skip = 0
    }
    
    if sum[i] == wonhoSum {
      return rank
    }
  }
  return 0
}
