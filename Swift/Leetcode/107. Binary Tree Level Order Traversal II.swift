/*
 Given a binary tree, return the bottom-up level order traversal of its nodes' values. (ie, from left to right, level by level from leaf to root).
 
 For example:
 Given binary tree [3,9,20,null,null,15,7],
 3
 / \
 9  20
 /  \
 15   7
 return its bottom-up level order traversal as:
 [
 [15,7],
 [9,20],
 [3]
 ]
 */
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
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        if root == nil { return [] }
        var list = [[Int]]()
        levelMaker(&list, root, level: 0)
        return list
        
    }
    
    func levelMaker(_ list: inout [[Int]], _ root: TreeNode?, level: Int) {
        if root == nil { return }
        if level >= list.count {
            list.insert([], at: 0)
        }
        levelMaker(&list, root?.left, level: level + 1)
        levelMaker(&list, root?.right, level: level + 1)
        list[list.count - level - 1].append(root!.val)
    }
}
