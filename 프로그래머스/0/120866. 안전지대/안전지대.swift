import Foundation

func solution(_ board:[[Int]]) -> Int {
    
    let dx = [-1, -1, 0, 1, 1, 1, 0, -1]
    let dy = [0, 1, 1, 1, 0, -1, -1, -1]
    
    var board = board
    var result = board.count * board.count
    
    for col in 0..<board.count {
        for row in 0..<board[col].count {
            if board[col][row] == 1 {
                result -= 1
                for i in 0..<8 {
                    let x = row + dx[i]
                    let y = col + dy[i]

                    if x < 0 || y < 0 
                             || x >= board[col].count || y >= board.count { continue }
                    
                    if board[y][x] != -1 && board[y][x] != 1 {
                        result -= 1
                        board[y][x] = -1
                    }
                }
            }
        }
    }
    
    return result
}

// 지뢰가 매설된 지도가 주어질때 안전한 지역의 칸수를 return
// 전체 칸수 - 지뢰

// [[0, 0, 0, 0, 0], 
// [ 0, 0, 0, 0, 0],
// [ 0, -1, -1, -1, 0], 
// [ 0, -1, 1, -1, 0],
// [ 0, -1, -1, -1, 0]]