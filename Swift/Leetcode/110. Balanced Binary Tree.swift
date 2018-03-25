/*
 Given a binary tree, determine if it is height-balanced.
 
 For this problem, a height-balanced binary tree is defined as:
 
 a binary tree in which the depth of the two subtrees of every node never differ by more than 1.
 
 Example 1:
 
 Given the following tree [3,9,20,null,null,15,7]:
 
 3
 / \
 9  20
 /  \
 15   7
 Return true.
 
 Example 2:
 
 Given the following tree [1,2,2,3,3,null,null,4,4]:
 
 1
 / \
 2   2
 / \
 3   3
 / \
 4   4
 Return false.
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
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil { return true }
        let left = depth(root?.left)
        let right = depth(root?.right)
        
        return abs(left-right) <= 1 && isBalanced(root?.left) && isBalanced(root?.right)
    }
    
    func depth(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        return max(depth(root?.left), depth(root?.right)) + 1
    }
}
