import Foundation

func solution(_ n:Int, _ w:Int, _ num:Int) -> Int {
  
  let quotient = n / w
  let remain = n % w
  let isLastDirectionRight = quotient % 2 == 1
  
  
  let targetFloor = Int(ceil(Double(num) / Double(w)))
  let isTargetDirectionRight = targetFloor % 2 == 0
  
  
  let targetIdx = isTargetDirectionRight ? w - (num - 1) % w - 1 : (num - 1) % w
  var result = quotient - targetFloor + 1
  if isLastDirectionRight {
    if targetIdx >= w - remain {
      result += 1
    }
  } else {
    if targetIdx < remain {
      result += 1
    }
  }
  

  return result
}