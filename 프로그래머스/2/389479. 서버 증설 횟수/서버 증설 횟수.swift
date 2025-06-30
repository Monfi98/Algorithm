import Foundation

func solution(_ players:[Int], _ m:Int, _ k:Int) -> Int {
  
  var needServers: [Int] = []
  
  for i in 0..<24 {
    let serverCount = players[i] / m
    needServers.append(serverCount)
  }
  
  var currentServers = Array(repeating: 0, count: 24)
  var result = 0
  for i in 0..<24 {
    // 현재 시간대의 서버수가 필요한 서버보다 적다면,
    if currentServers[i] < needServers[i] {
      // 생명 주기만큼 필요한 서버수를 더해줌
      let addedServer = needServers[i] - currentServers[i]
      result += addedServer
      for j in 0..<k {
        // 인덱스가 플레이어 카운트를 넘어간다면 break
        if 24 <= i + j { break }
        currentServers[i + j] += addedServer
      }
    }
  }
  
  return result
}

// m 명 늘어날때 마다 서버 1대 추가(m 미만이라면 증설 X)
// n x m 이상, (n + 1) x m 미만이라면 n대의 증설된 서버가 운영 중이여야함
// 한번 증설한 서버는 k 시간동안 운영하고 그 이후에는 반납

// 하루 동안 모든 게임 이용자가 게임을 하기 위해 서버를 최소 몇 번 증설해야하는지 알고싶음
