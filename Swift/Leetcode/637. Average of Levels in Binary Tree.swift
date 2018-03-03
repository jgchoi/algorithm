/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var result: [Double] = []
        if root == nil {
            return result
        }
        
        var queue = [root]
        
        while !queue.isEmpty {
            let n = queue.count
            var sum = 0
            for _ in 0..<n {
                if let node = queue.removeFirst() {
                    sum += node.val
                    if let left = node.left {
                        queue.append(left)
                    }
                    if let right = node.right {
                        queue.append(right)
                    }
                }
            }
            let average = Double(sum)/Double(n)
            result.append(average)
        }
        return result
    }
    
}
