import Foundation

func solution(_ maps:[String]) -> [Int] {
    
    var result:[Int] = []
    
    let rowCount = maps.first!.count
    let colCount = maps.count
    
    let dx = [0, 1, 0, -1]
    let dy = [-1, 0, 1, 0]
    
    var grid: [[Character]] = []
    for row in maps {
        grid.append(Array(row))
    }
    
    while true {
        let flatGrid = grid.flatMap { $0 }
        guard let firstIndex = flatGrid.firstIndex(where: { $0 != "X" }) else {
            break
        }
        let startPoint = Point(x: firstIndex%rowCount, y: firstIndex/rowCount)
        var stack: [Point] = []
        var visitedPoint: Set<Point> = []
        var sum = 0
        stack.append(startPoint)
        
        while !stack.isEmpty {
            let currentPoint = stack.removeLast()
            
            if visitedPoint.contains(currentPoint) { continue }
            visitedPoint.insert(currentPoint)
            sum += Int(String(grid[currentPoint.y][currentPoint.x]))!
            grid[currentPoint.y][currentPoint.x] = "X"
            
            for i in 0..<4 {
                let x = currentPoint.x + dx[i]
                let y = currentPoint.y + dy[i]
                
                if x < 0 || y < 0 || x >= rowCount || y >= colCount { continue }
                if grid[y][x] != "X" {
                    stack.append(Point(x: x, y: y))
                }
            }
        }
        result.append(sum)
    }
    if result.isEmpty { return [-1] }
    return result.sorted(by: <)
}

struct Point: Hashable {
    var x: Int
    var y: Int
}