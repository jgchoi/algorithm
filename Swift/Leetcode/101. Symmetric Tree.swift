/*
 Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).
 
 For example, this binary tree [1,2,2,3,4,4,3] is symmetric:
 
 1
 / \
 2   2
 / \ / \
 3  4 4  3
 But the following [1,2,2,null,3,null,3] is not:
 1
 / \
 2   2
 \   \
 3    3
 Note:
 Bonus points if you could solve it both recursively and iteratively.*/

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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return helper(root?.left, root?.right)
    }
    
    func helper(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
        if left == nil || right == nil { return left?.val == right?.val }
        if left?.val != right?.val {
            return false
        }
        return helper(left?.left, right?.right) && helper(left?.right, right?.left)
    }
    
}
