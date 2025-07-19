import Foundation

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
  
  var grid: [Set<Int>] = [Set([x])]
  
  var i = 0
  while true {
    if grid[i].contains(y) { return i }
    if grid.count <= i + 1 { grid.append([]) }
    
    for num in grid[i] {
      if num + n <= y { grid[i + 1].insert(num + n) }
      if num * 2 <= y { grid[i + 1].insert(num * 2) }
      if num * 3 <= y { grid[i + 1].insert(num * 3) }
    }
    if grid[i].count == 0 { break }
    i += 1
  }
  
  return -1
}

// 자연수 x를 y로 변환하려고 한다.
// x + n
// x * 2
// x * 3

// 최소 연산횟수를 return, x를 y로 만들 수 없다면 -1을 return