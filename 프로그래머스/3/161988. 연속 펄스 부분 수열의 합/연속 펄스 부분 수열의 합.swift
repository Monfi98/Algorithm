func solution(_ sequence:[Int]) -> Int64 {
  
  var cur1 = Int64(sequence[0])
  var max1 = Int64(sequence[0])
  
  var cur2 = Int64(-sequence[0])
  var max2 = Int64(-sequence[0])
  
  for i in 1..<sequence.count {
    let num1 = Int64(sequence[i]) * (i % 2 == 0 ? 1 : -1)
    cur1 = max(num1, cur1 + num1)
    max1 = max(cur1, max1)
    
    let num2 = Int64(sequence[i]) * (i % 2 == 0 ? -1 : 1)
    cur2 = max(num2, cur2 + num2)
    max2 = max(cur2, max2)
  }
  
  return max(max1, max2)
}