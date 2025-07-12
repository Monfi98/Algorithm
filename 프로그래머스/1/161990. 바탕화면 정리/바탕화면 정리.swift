import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    
    var grid: [[Character]] = []
    for row in wallpaper {
        grid.append(Array(row))
    }
    
    var minPos: (Int, Int) = (51, 51)
    var maxPos: (Int, Int) = (0, 0)
    
    for x in 0..<grid.count {
        for y in 0..<grid[x].count {
            if grid[x][y] == "#" {
                if minPos.0 > x { minPos.0 = x }
                if minPos.1 > y { minPos.1 = y }
                if maxPos.0 < x { maxPos.0 = x }
                if maxPos.1 < y { maxPos.1 = y }
            }
        }
    }
    
    return [minPos.0, minPos.1, maxPos.0 + 1, maxPos.1 + 1]
}

// wallpaper: 상태를 나타낸 배열
// 드래그 (lux luy) -> (rdx, rdy)
// 거리 |rdx - lux| + |rdy - luy|
// 최소한의 거리를 갖는 드래그로 파일들을 한번에 삭제하는 로직
// [lux, luy, rdx, rdy]

// 왼쪽 위, 오른쪽 아래
// [[".", "#", ".", ".", "."], 
//  [".", ".", "#", ".", "."], 
//  [".", ".", ".", "#", "."]] (2, 3)