/*
 
 Given two non-empty binary trees s and t, check whether tree t has exactly the same structure and node values with a subtree of s. A subtree of s is a tree consists of a node in s and all of this node's descendants. The tree s could also be considered as a subtree of itself.
 
 Example 1:
 Given tree s:
 
 3
 / \
 4   5
 / \
 1   2
 Given tree t:
 4
 / \
 1   2
 Return true, because t has the same structure and node values with a subtree of s.
 Example 2:
 Given tree s:
 
 3
 / \
 4   5
 / \
 1   2
 /
 0
 Given tree t:
 4
 / \
 1   2
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
    func isSubtree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
        if let s = s {
            if isSame(s, t) { return true }
            return isSubtree(s.left, t) || isSubtree(s.right, t)
        }
        return false
    }
    
    func isSame(_ a: TreeNode?, _ b: TreeNode?) -> Bool {
        
        if a == nil && b == nil { return true }
        if a == nil || b == nil { return false }
        if a?.val != b?.val { return false }
        return isSame(a?.left, b?.left) && isSame(a?.right, b?.right) && a?.val == b?.val
    }
    
}
