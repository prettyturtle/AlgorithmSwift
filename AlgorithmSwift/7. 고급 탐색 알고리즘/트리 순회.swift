struct Node {
    let value: String
    let leftNode: String
    let rightNode: String
}

let n = Int(readLine()!)!
var tree = [String: Node]()

for _ in 1...n {
    let nodes = readLine()!.split(separator: " ").map { String($0) }
    let node = Node(value: nodes[0], leftNode: nodes[1], rightNode: nodes[2])
    tree[node.value] = node
}

func preOrder(node: Node) {
    print(node.value, terminator: "")
    if node.leftNode != "." {
        preOrder(node: tree[node.leftNode]!)
    }
    if node.rightNode != "." {
        preOrder(node: tree[node.rightNode]!)
    }
}

func inOrder(node: Node) {
    if node.leftNode != "." {
        inOrder(node: tree[node.leftNode]!)
    }
    print(node.value, terminator: "")
    if node.rightNode != "." {
        inOrder(node: tree[node.rightNode]!)
    }
}

func postOrder(node: Node) {
    if node.leftNode != "." {
        postOrder(node: tree[node.leftNode]!)
    }
    if node.rightNode != "." {
        postOrder(node: tree[node.rightNode]!)
    }
    print(node.value, terminator: "")
}

preOrder(node: tree["A"]!)
print()
inOrder(node: tree["A"]!)
print()
postOrder(node: tree["A"]!)
