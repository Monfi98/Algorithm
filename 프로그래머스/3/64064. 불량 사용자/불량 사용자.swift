import Foundation

func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
  
  var arr: [[String]] = []
  
  for i in 0..<banned_id.count {
    arr.append([])
    for j in 0..<user_id.count {
      if isMatchingPattern(text: user_id[j], pattern: banned_id[i]) {
        arr[i].append(user_id[j])
      }
    }
  }
  
  return DFS(graph: arr)
}

func isMatchingPattern(text: String, pattern: String) -> Bool {
  let textArr = Array(text)
  let patternArr = Array(pattern)
  
  guard textArr.count == patternArr.count else { return false }
  
  for i in 0..<textArr.count {
    if patternArr[i] == "*" { continue }
    if textArr[i] != patternArr[i] { return false }
  }
  
  return true
}


func DFS(graph: [[String]]) -> Int {
  var stack: [(Int, [String])] = [(0, [])]
  var validSets = Set<Set<String>>()
  
  while !stack.isEmpty {
    let (index, selected) = stack.removeLast()
    
    if index == graph.count {
      validSets.insert(Set(selected))
      continue
    }
    
    for user in graph[index] {
      if !selected.contains(user) {
        stack.append((index + 1, selected + [user]))
      }
    }
  }
  
  return validSets.count
}

