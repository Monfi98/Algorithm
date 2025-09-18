import Foundation

class Node {
    let value: Int
    let x: Int
    let y: Int
    
    var left: Node?
    var right: Node?
    
    init(value: Int, x: Int, y: Int, left: Node? = nil, right: Node? = nil) {
        self.value = value
        self.x = x
        self.y = y
        self.left = left
        self.right = right
    }
}

func solution(_ nodeinfo:[[Int]]) -> [[Int]] {
    
    // 1. node 형태로 변환
    let nodes: [Node] = nodeinfo.enumerated().map { (index, value) in
        Node(value: index + 1, x: value[0], y: value[1])
    }
    
    // 2. node 레벨별로 정렬
    let sortedNodes = nodes.sorted {
        if $0.y == $1.y { return $0.x < $1.x }
        return $0.y > $1.y
    }
    
    // 3. node 연결
    let root = sortedNodes[0]
    for i in 1..<sortedNodes.count {
        var currentNode = root
        while true {
            if currentNode.x > sortedNodes[i].x {
                if currentNode.left == nil {
                    currentNode.left = sortedNodes[i]
                    break
                } else {
                    currentNode = currentNode.left!
                }
            } else {
                if currentNode.right == nil {
                    currentNode.right = sortedNodes[i]
                    break
                } else {
                    currentNode = currentNode.right!
                }
            }
        }
    }
    
    return [preorder(root), postorder(root)]
}

// 두 팀으로 나누고 각 팀이 같은 곳을 다른 순서로 방문하도록 해서 먼저 순회를 마친팀이 승리
// 같은 레벨은 같은 Y, 서로 다른 X값
// 이진트리를 전위 순회, 후위 순회 시켜보자

func preorder(_ root: Node?) -> [Int] {
    guard let root = root else { return [] }
    return [root.value] + preorder(root.left) + preorder(root.right)
}

func postorder(_ root: Node?) -> [Int] {
    guard let root = root else { return [] }
    return postorder(root.left) + postorder(root.right) + [root.value]
}