import UIKit


/*
      1
     /  \
    2    3
   / \  / \
  4   5 6  7
*/

class binaryNode<Int> {
    
    var value: Int
    var leftChild: binaryNode?
    var rightChild: binaryNode?
    
    init(value: Int, leftChild: binaryNode?, rightChild: binaryNode? ) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
        
      }
}

var tree: binaryNode<Int> {


let fourNode = binaryNode<Int>(value: 4, leftChild: nil , rightChild: nil)
let fiveNode = binaryNode<Int>(value: 5, leftChild: nil, rightChild: nil)
let sixNode = binaryNode<Int>(value: 5, leftChild: nil, rightChild: nil)
let sevenNode = binaryNode<Int>(value: 7, leftChild: nil, rightChild: nil)
let twoNode = binaryNode<Int>(value: 2, leftChild: fourNode, rightChild: fiveNode)
let threeNode = binaryNode<Int>(value: 3, leftChild: sixNode, rightChild: sevenNode)
let rootNode = binaryNode<Int>(value: 1, leftChild: twoNode, rightChild: threeNode)
    return rootNode
}

extension binaryNode {
    func height<T>(of binaryNode:<T>?) -> Int {
        
        guard let binaryNode = binaryNode else {
            return -1 as! Int
        }

        return 1 + max(height(of: tree.leftChild), height(of: tree.rightChild))
    }
}











