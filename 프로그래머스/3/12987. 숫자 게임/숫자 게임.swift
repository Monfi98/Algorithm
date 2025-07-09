import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
  
  let sortedA = a.sorted(by: <)
  let sortedB = b.sorted(by: <)
  
  var aPointer = 0
  var bPointer = 0
  
  var count = 0
  
  while bPointer < b.count {
    if sortedA[aPointer] < sortedB[bPointer] {
      count += 1
      aPointer += 1
      bPointer += 1
    } else {
      bPointer += 1
    }
  }
  
  return count
}