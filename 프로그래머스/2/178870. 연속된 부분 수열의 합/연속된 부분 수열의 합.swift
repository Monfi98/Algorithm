import Foundation

func solution(_ sequence: [Int], _ k: Int) -> [Int] {
  var (start, end) = (0, 0)
  var sum = sequence[0]
  var result: [Int] = []
  var minLength = Int.max
  
  while start < sequence.count {
    if sum < k {
      end += 1
      if end == sequence.count { break }
      sum += sequence[end]
    } else {
      if sum == k {
        let length = end - start
        if length < minLength {
          minLength = length
          result = [start, end]
        }
      }
      sum -= sequence[start]
      start += 1
    }
  }
  
  return result
}