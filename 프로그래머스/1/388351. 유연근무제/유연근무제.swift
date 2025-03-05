// 출근 희망 시각 + 10분 어플로 출근
// 토요일 일요일은 영향 X
// 시 x 100 + 분 으로 표현
// 출근 희망 시각과 실제로 출근한 기록을 바탕으로 상품을 받을 직원을 구하라
// startday -> 이벤트를 시작한 요일을 의하는 정수(주말을 빼야해서 있는듯)

import Foundation

func isValid(hope: Int, real: Int) -> Bool {
  var comparableTime = hope + 10
  if comparableTime % 100 >= 60 {
    comparableTime += 40
  }
  
  if comparableTime < real {
    return false
  }
  return true
}

func solution(_ schedules:[Int], _ timelogs:[[Int]], _ startday:Int) -> Int {
  
let invalidDays = Set([(6 - startday + 7) % 7, (7 - startday + 7) % 7])
  var result = 0
  
  for i in 0..<schedules.count {
    var count = 0
    for j in 0..<7 {
      if invalidDays.contains(j) { continue } // 주말은 스킵
      if isValid(hope: schedules[i], real: timelogs[i][j]) {
        count += 1
      }
    }
    if count == 5 { result += 1 }
  }
  
  return result
}